import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smart_expense_tracker/core/constants/app_constants.dart';

final budgetBoxProvider = Provider<Box>((ref) {
  return Hive.box(AppConstants.budgetBoxName);
});

class MonthlyBudgetNotifier extends StateNotifier<AsyncValue<double>> {
  final Box _box;

  MonthlyBudgetNotifier(this._box) : super(const AsyncValue.loading()) {
    _loadBudget();
  }

  void _loadBudget() {
    final budget = _box.get('monthly_limit', defaultValue: 0.0);
    state = AsyncValue.data(budget);
  }

  Future<void> updateBudget(double amount) async {
    await _box.put('monthly_limit', amount);
    state = AsyncValue.data(amount);
  }
}

final monthlyBudgetProvider =
    StateNotifierProvider<MonthlyBudgetNotifier, AsyncValue<double>>((ref) {
      final box = ref.watch(budgetBoxProvider);
      return MonthlyBudgetNotifier(box);
    });
