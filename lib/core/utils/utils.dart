import 'package:intl/intl.dart';
import '../constants/app_constants.dart';

/// Date utility functions
/// Centralized date operations for consistency across the app
class DateUtils {
  DateUtils._();

  /// Format date for display in UI
  static String formatDate(DateTime date) {
    return DateFormat(AppConstants.displayDateFormat).format(date);
  }

  /// Format date for grouping expenses (more detailed)
  static String formatGroupingDate(DateTime date) {
    return DateFormat(AppConstants.groupingDateFormat).format(date);
  }

  /// Format month and year for analytics
  static String formatMonthYear(DateTime date) {
    return DateFormat(AppConstants.monthYearFormat).format(date);
  }

  /// Get start of day (useful for date comparisons)
  static DateTime startOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  /// Get end of day
  static DateTime endOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day, 23, 59, 59, 999);
  }

  /// Get start of current month
  static DateTime startOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }

  /// Get end of current month
  static DateTime endOfMonth(DateTime date) {
    return DateTime(date.year, date.month + 1, 0, 23, 59, 59, 999);
  }

  /// Check if two dates are on the same day
  static bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  /// Check if date is in current month
  static bool isCurrentMonth(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year && date.month == now.month;
  }

  /// Get month key for grouping (YYYY-MM format)
  static String getMonthKey(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}';
  }
}

/// Currency and number formatting utilities
class CurrencyUtils {
  CurrencyUtils._();

  /// Format amount as currency
  /// Uses Indian Rupee format with 2 decimal places
  static String formatAmount(double amount) {
    final formatter = NumberFormat('#,##,##0.00', 'en_IN');
    return '${AppConstants.currencySymbol}${formatter.format(amount)}';
  }

  /// Format amount without currency symbol (for input fields)
  static String formatAmountWithoutSymbol(double amount) {
    final formatter = NumberFormat('#,##,##0.00', 'en_IN');
    return formatter.format(amount);
  }

  /// Parse string to double, return null if invalid
  static double? parseAmount(String text) {
    try {
      // Remove currency symbol and commas
      final cleaned = text
          .replaceAll(AppConstants.currencySymbol, '')
          .replaceAll(',', '')
          .trim();
      return double.parse(cleaned);
    } catch (e) {
      return null;
    }
  }
}

/// Validation utilities
class ValidationUtils {
  ValidationUtils._();

  /// Validate expense amount
  static String? validateAmount(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Amount is required';
    }

    final amount = CurrencyUtils.parseAmount(value);
    if (amount == null) {
      return 'Invalid amount';
    }

    if (amount <= 0) {
      return 'Amount must be greater than 0';
    }

    if (amount > AppConstants.maxExpenseAmount) {
      return 'Amount is too large';
    }

    return null;
  }

  /// Validate category
  static String? validateCategory(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Category is required';
    }
    return null;
  }

  /// Validate note (optional field with max length)
  static String? validateNote(String? value) {
    if (value != null && value.length > AppConstants.maxNoteLength) {
      return 'Note is too long (max ${AppConstants.maxNoteLength} characters)';
    }
    return null;
  }

  /// Validate date
  static String? validateDate(DateTime? value) {
    if (value == null) {
      return 'Date is required';
    }

    // Don't allow future dates
    if (value.isAfter(DateTime.now())) {
      return 'Date cannot be in the future';
    }

    return null;
  }
}
