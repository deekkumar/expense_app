import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smart_expense_tracker/core/constants/app_constants.dart';
import 'package:smart_expense_tracker/features/expenses/data/models/expense_model.dart';
import 'package:smart_expense_tracker/features/expenses/data/models/scheduled_expense_model.dart';
import 'package:uuid/uuid.dart';
import 'package:workmanager/workmanager.dart';

// Top-level function for background execution
@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    try {
      if (task == BackgroundService.taskDailyCheck) {
        await _handleDailyCheck();
      }
      return Future.value(true);
    } catch (e) {
      debugPrint('Background Task Error: $e');
      return Future.value(false);
    }
  });
}

Future<void> _handleDailyCheck() async {
  // 1. Initialize Hive in background isolate
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(0)) Hive.registerAdapter(ExpenseModelAdapter());
  if (!Hive.isAdapterRegistered(1))
    Hive.registerAdapter(ScheduledExpenseModelAdapter());

  // 2. Open boxes
  final scheduledBox = await Hive.openBox<ScheduledExpenseModel>(
    AppConstants.scheduledExpensesBoxName,
  );
  final expenseBox = await Hive.openBox<ExpenseModel>(
    AppConstants.expensesBoxName,
  );

  final now = DateTime.now();
  // final today = DateTime(now.year, now.month, now.day); // Unused

  // 3. Process Scheduled Expenses
  for (final schedule in scheduledBox.values) {
    if (!schedule.isActive) continue;

    if (schedule.nextRunDate.isBefore(now) ||
        isSameDay(schedule.nextRunDate, now)) {
      // Create the expense
      final newExpense = ExpenseModel(
        id: const Uuid().v4(),
        amount: schedule.amount,
        category: schedule.category,
        date: DateTime.now(),
        note: "${schedule.note ?? ''} (Auto-Scheduled)",
        createdAt: DateTime.now(),
      );

      await expenseBox.put(newExpense.id, newExpense);

      // Update next run date (Assuming monthly)
      final nextDate = DateTime(now.year, now.month + 1, schedule.dayOfMonth);

      final updatedSchedule = schedule.copyWith(nextRunDate: nextDate);

      await scheduledBox.put(schedule.id, updatedSchedule);
    }
  }

  await scheduledBox.close();
  await expenseBox.close();
}

bool isSameDay(DateTime a, DateTime b) {
  return a.year == b.year && a.month == b.month && a.day == b.day;
}

class BackgroundService {
  static const String taskDailyCheck = 'daily_expense_check';

  static Future<void> initialize() async {
    await Workmanager().initialize(
      callbackDispatcher,
      isInDebugMode: kDebugMode,
    );
  }

  static Future<void> scheduleDailyJob() async {
    await Workmanager().registerPeriodicTask(
      "1",
      taskDailyCheck,
      frequency: const Duration(hours: 24),
      constraints: Constraints(
        networkType: NetworkType.connected,
        requiresBatteryNotLow: true,
      ),
      existingWorkPolicy: ExistingPeriodicWorkPolicy.keep,
    );
  }
}
