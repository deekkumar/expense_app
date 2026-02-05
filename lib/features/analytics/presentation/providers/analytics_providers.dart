import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_expense_tracker/features/expenses/domain/entities/expense_entity.dart';
import 'package:smart_expense_tracker/features/expenses/presentation/providers/expense_providers.dart';
import 'package:smart_expense_tracker/features/spending_intelligence/domain/entities/insight.dart';
import 'package:smart_expense_tracker/features/spending_intelligence/domain/algorithms/spending_algorithms.dart';
import 'package:smart_expense_tracker/features/budget/presentation/providers/budget_providers.dart';

/// Daily Snapshot Data
class DailySnapshot {
  final double todayTotal;
  final double yesterdayTotal;
  final double dailyAverage;
  final double percentChangeVsAverage;

  DailySnapshot({
    required this.todayTotal,
    required this.yesterdayTotal,
    required this.dailyAverage,
    required this.percentChangeVsAverage,
  });
}

/// Category Insight Data
class CategoryInsight {
  final String category;
  final double amount;
  final double percentageOfTotal;
  final double changeVsLastMonth; // percent change

  CategoryInsight({
    required this.category,
    required this.amount,
    required this.percentageOfTotal,
    required this.changeVsLastMonth,
  });
}

/// Provider for Daily Snapshot
final dailySnapshotProvider = Provider<DailySnapshot>((ref) {
  final expensesAsync = ref.watch(expensesProvider);
  return expensesAsync.maybeWhen(
    data: (expenses) {
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      final yesterday = today.subtract(const Duration(days: 1));

      final todayTotal = expenses
          .where(
            (e) =>
                e.date.year == today.year &&
                e.date.month == today.month &&
                e.date.day == today.day,
          )
          .fold(0.0, (sum, e) => sum + e.amount);

      final yesterdayTotal = expenses
          .where(
            (e) =>
                e.date.year == yesterday.year &&
                e.date.month == yesterday.month &&
                e.date.day == yesterday.day,
          )
          .fold(0.0, (sum, e) => sum + e.amount);

      // Daily average this month (excluding today in count to be fair? or including?)
      // User says "Daily average this month"
      final currentMonthExpenses = expenses
          .where((e) => e.date.year == now.year && e.date.month == now.month)
          .toList();

      final daysPassed = now.day;
      final monthTotal = currentMonthExpenses.fold(
        0.0,
        (sum, e) => sum + e.amount,
      );
      final dailyAverage = daysPassed > 0 ? monthTotal / daysPassed : 0.0;

      double percentChange = 0;
      if (dailyAverage > 0) {
        percentChange = ((todayTotal - dailyAverage) / dailyAverage) * 100;
      }

      return DailySnapshot(
        todayTotal: todayTotal,
        yesterdayTotal: yesterdayTotal,
        dailyAverage: dailyAverage,
        percentChangeVsAverage: percentChange,
      );
    },
    orElse: () => DailySnapshot(
      todayTotal: 0,
      yesterdayTotal: 0,
      dailyAverage: 0,
      percentChangeVsAverage: 0,
    ),
  );
});

/// Provider for Smart Warnings
final smartWarningsProvider = Provider<List<Insight>>((ref) {
  final expensesAsync = ref.watch(expensesProvider);
  // We might also need budget info
  final budget = ref.watch(monthlyBudgetProvider).asData?.value ?? 0.0;

  return expensesAsync.maybeWhen(
    data: (expenses) {
      final insights = <Insight>[];

      // 1. Anomalies (spikes today)
      insights.addAll(SpendingAlgorithms.detectAnomalies(expenses));

      // 2. Budget burn
      final now = DateTime.now();
      final currentMonthExpenses = expenses
          .where((e) => e.date.year == now.year && e.date.month == now.month)
          .toList();
      final burnInsight = SpendingAlgorithms.predictBudgetBurn(
        currentMonthExpenses,
        budget,
      );
      if (burnInsight != null) insights.add(burnInsight);

      return insights;
    },
    orElse: () => [],
  );
});

/// Provider for Trend Explanation
final trendExplanationProvider = Provider<String>((ref) {
  final trendData = ref.watch(monthlyTrendProvider);
  if (trendData.isEmpty) return "No data to analyze trends.";

  final entries = trendData.entries.toList();
  if (entries.length < 2) return "Continue tracking to see spending trends.";

  final currentMonth = entries.last.value;
  final previousMonth = entries[entries.length - 2].value;

  // Simple comparisons
  if (entries.length >= 3) {
    final prevPrevMonth = entries[entries.length - 3].value;
    if (currentMonth > previousMonth && previousMonth > prevPrevMonth) {
      return "Your spending has increased for 3 consecutive months.";
    }
  }

  if (currentMonth > previousMonth * 1.2) {
    return "This month is significantly higher than last month.";
  } else if (currentMonth < previousMonth * 0.8) {
    return "Great job! You've spent less than last month so far.";
  }

  // Find max in last 6 months
  final maxSpend = entries.map((e) => e.value).reduce((a, b) => a > b ? a : b);
  if (currentMonth >= maxSpend && currentMonth > 0) {
    return "This month is your highest spending in 6 months.";
  }

  return "Your spending is relatively stable compared to last month.";
});

/// Provider for Category Action Insights
final categoryActionInsightsProvider = Provider<Map<String, CategoryInsight>>((
  ref,
) {
  final expensesAsync = ref.watch(expensesProvider);

  return expensesAsync.maybeWhen(
    data: (expenses) {
      final now = DateTime.now();
      final currentMonthExpenses = expenses
          .where((e) => e.date.year == now.year && e.date.month == now.month)
          .toList();

      final lastMonth = DateTime(now.year, now.month - 1);
      final lastMonthExpenses = expenses
          .where(
            (e) =>
                e.date.year == lastMonth.year &&
                e.date.month == lastMonth.month,
          )
          .toList();

      final currentTotals = <String, double>{};
      double totalCurrent = 0;
      for (var e in currentMonthExpenses) {
        currentTotals[e.category] = (currentTotals[e.category] ?? 0) + e.amount;
        totalCurrent += e.amount;
      }

      final lastTotals = <String, double>{};
      for (var e in lastMonthExpenses) {
        lastTotals[e.category] = (lastTotals[e.category] ?? 0) + e.amount;
      }

      final insights = <String, CategoryInsight>{};
      currentTotals.forEach((cat, amt) {
        final lastAmt = lastTotals[cat] ?? 0;
        double change = 0;
        if (lastAmt > 0) {
          change = ((amt - lastAmt) / lastAmt) * 100;
        }

        insights[cat] = CategoryInsight(
          category: cat,
          amount: amt,
          percentageOfTotal: totalCurrent > 0 ? (amt / totalCurrent) * 100 : 0,
          changeVsLastMonth: change,
        );
      });

      return insights;
    },
    orElse: () => {},
  );
});
