import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_expense_tracker/core/utils/utils.dart';
import 'package:smart_expense_tracker/features/expenses/presentation/providers/expense_providers.dart';

class AnalyticsScreen extends ConsumerWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final analytics = ref.watch(monthlyAnalyticsProvider);
    final trendData = ref.watch(monthlyTrendProvider);
    final theme = Theme.of(context);

    if (!analytics.hasExpenses) {
      return Scaffold(
        appBar: AppBar(title: const Text('Analytics')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.pie_chart_outline,
                size: 64,
                color: theme.colorScheme.secondary,
              ),
              const SizedBox(height: 16),
              const Text('No expenses to analyze yet'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Monthly Insights')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Month Total
            _buildTotalCard(context, analytics),
            const SizedBox(height: 24),

            // Monthly Trend (6 Months)
            Text('6-Month Trend', style: theme.textTheme.titleLarge),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  barGroups: _getTrendGroups(trendData, theme),
                  borderData: FlBorderData(show: false),
                  titlesData: const FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: _getTitles,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Pie Chart
            Text('Spending by Category', style: theme.textTheme.titleLarge),
            const SizedBox(height: 16),
            SizedBox(
              height: 250,
              child: PieChart(
                PieChartData(
                  sections: _getSections(analytics, theme),
                  centerSpaceRadius: 40,
                  sectionsSpace: 2,
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Detailed Breakdown
            Text('Category Details', style: theme.textTheme.titleLarge),
            const SizedBox(height: 16),
            ...analytics.categoryBreakdown.entries.map((entry) {
              final percentage = (entry.value / analytics.total * 100)
                  .toStringAsFixed(1);
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: theme.colorScheme.primaryContainer,
                  child: Text(entry.key[0].toUpperCase()),
                ),
                title: Text(entry.key),
                subtitle: Text('$percentage% of total'),
                trailing: Text(
                  CurrencyUtils.formatAmount(entry.value),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildTotalCard(BuildContext context, MonthlyAnalytics analytics) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.primaryContainer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text('Total Spent this Month'),
            const SizedBox(height: 8),
            Text(
              CurrencyUtils.formatAmount(analytics.total),
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _getSections(
    MonthlyAnalytics analytics,
    ThemeData theme,
  ) {
    final List<Color> colors = [
      theme.colorScheme.primary,
      theme.colorScheme.secondary,
      theme.colorScheme.tertiary,
      Colors.orange,
      Colors.purple,
      Colors.teal,
    ];

    int index = 0;
    return analytics.categoryBreakdown.entries.map((entry) {
      final color = colors[index % colors.length];
      index++;
      final percentage = (entry.value / analytics.total * 100);

      return PieChartSectionData(
        color: color,
        value: entry.value,
        title: '${percentage.toInt()}%',
        radius: 60,
        titleStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
    }).toList();
  }

  List<BarChartGroupData> _getTrendGroups(
    Map<String, double> data,
    ThemeData theme,
  ) {
    int x = 0;
    return data.entries.map((entry) {
      return BarChartGroupData(
        x: x++,
        barRods: [
          BarChartRodData(
            toY: entry.value,
            color: theme.colorScheme.primary,
            width: 16,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      );
    }).toList();
  }

  static Widget _getTitles(double value, TitleMeta meta) {
    return const Text('', style: TextStyle(fontSize: 10)); // Simplified for now
  }
}
