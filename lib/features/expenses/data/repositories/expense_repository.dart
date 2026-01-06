import 'package:uuid/uuid.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/expense_entity.dart';
import '../local/expense_local_data_source.dart';
import '../models/expense_model.dart';

/// Repository: Expense Repository
///
/// The bridge between domain and data layers
///
/// Responsibilities:
/// - Coordinate data operations
/// - Convert between entities and models
/// - Handle errors and return Failures
/// - Maintain business logic constraints
///
/// Design Pattern: Repository Pattern
/// - Abstracts data source details from business logic
/// - Provides clean API for domain layer
/// - Centralizes error handling and conversion logic
///
/// Why not use interfaces here?
/// - For a single data source (Hive), concrete implementation is sufficient
/// - Interfaces add value when you have multiple implementations (local + remote)
/// - Keeps code simple and YAGNI (You Aren't Gonna Need It)
class ExpenseRepository {
  final ExpenseLocalDataSource _localDataSource;
  final Uuid _uuid;

  ExpenseRepository({
    required ExpenseLocalDataSource localDataSource,
    Uuid? uuid,
  })  : _localDataSource = localDataSource,
        _uuid = uuid ?? const Uuid();

  /// Create a new expense
  ///
  /// Process:
  /// 1. Generate unique ID
  /// 2. Create entity with timestamps
  /// 3. Validate business rules
  /// 4. Convert to model and persist
  /// 5. Return created entity or failure
  Future<(ExpenseEntity?, Failure?)> createExpense({
    required double amount,
    required String category,
    required DateTime date,
    String? note,
  }) async {
    try {
      // Create domain entity
      final entity = ExpenseEntity(
        id: _uuid.v4(),
        amount: amount,
        category: category,
        date: date,
        note: note?.trim().isEmpty ?? true ? null : note!.trim(),
        createdAt: DateTime.now(),
        updatedAt: null,
      );

      // Validate business rules
      final validationError = entity.validate();
      if (validationError != null) {
        return (
          null,
          Failure.validation(
            message: validationError,
          ),
        );
      }

      // Convert to model and persist
      final model = ExpenseModel.fromEntity(entity);
      await _localDataSource.createExpense(model);

      return (entity, null);
    } catch (e) {
      return (
        null,
        Failure.storage(
          message: 'Failed to create expense',
          error: e,
        ),
      );
    }
  }

  /// Update an existing expense
  ///
  /// Validates expense exists before updating
  Future<(ExpenseEntity?, Failure?)> updateExpense({
    required String id,
    required double amount,
    required String category,
    required DateTime date,
    String? note,
  }) async {
    try {
      // Check if expense exists
      final existing = _localDataSource.getExpenseById(id);
      if (existing == null) {
        return (
          null,
          Failure.notFound(
            message: 'Expense not found',
            resourceId: id,
          ),
        );
      }

      // Create updated entity preserving creation timestamp
      final entity = ExpenseEntity(
        id: id,
        amount: amount,
        category: category,
        date: date,
        note: note?.trim().isEmpty ?? true ? null : note!.trim(),
        createdAt: existing.createdAt,
        updatedAt: DateTime.now(),
      );

      // Validate business rules
      final validationError = entity.validate();
      if (validationError != null) {
        return (
          null,
          Failure.validation(
            message: validationError,
          ),
        );
      }

      // Convert to model and persist
      final model = ExpenseModel.fromEntity(entity);
      await _localDataSource.updateExpense(model);

      return (entity, null);
    } catch (e) {
      return (
        null,
        Failure.storage(
          message: 'Failed to update expense',
          error: e,
        ),
      );
    }
  }

  /// Delete an expense
  ///
  /// Idempotent: doesn't fail if expense doesn't exist
  Future<Failure?> deleteExpense(String id) async {
    try {
      await _localDataSource.deleteExpense(id);
      return null;
    } catch (e) {
      return Failure.storage(
        message: 'Failed to delete expense',
        error: e,
      );
    }
  }

  /// Get all expenses sorted by date (newest first)
  ///
  /// Performance: Sorts in-memory after loading
  /// For large datasets, consider sorting at query level
  (List<ExpenseEntity>?, Failure?) getAllExpenses() {
    try {
      final models = _localDataSource.getAllExpenses();

      // Convert to entities
      final entities = models.map((m) => m.toEntity()).toList();

      // Sort by date descending (newest first)
      entities.sort((a, b) => b.date.compareTo(a.date));

      return (entities, null);
    } catch (e) {
      return (
        null,
        Failure.storage(
          message: 'Failed to load expenses',
          error: e,
        ),
      );
    }
  }

  /// Get expense by ID
  (ExpenseEntity?, Failure?) getExpenseById(String id) {
    try {
      final model = _localDataSource.getExpenseById(id);

      if (model == null) {
        return (
          null,
          Failure.notFound(
            message: 'Expense not found',
            resourceId: id,
          ),
        );
      }

      return (model.toEntity(), null);
    } catch (e) {
      return (
        null,
        Failure.storage(
          message: 'Failed to load expense',
          error: e,
        ),
      );
    }
  }

  /// Get expenses for a specific month
  ///
  /// Used by analytics providers
  (List<ExpenseEntity>?, Failure?) getExpensesByMonth(int year, int month) {
    try {
      final models = _localDataSource.getExpensesByMonth(year, month);

      // Convert to entities and sort
      final entities = models.map((m) => m.toEntity()).toList();
      entities.sort((a, b) => b.date.compareTo(a.date));

      return (entities, null);
    } catch (e) {
      return (
        null,
        Failure.storage(
          message: 'Failed to load expenses for month',
          error: e,
        ),
      );
    }
  }

  /// Get expenses for date range
  (List<ExpenseEntity>?, Failure?) getExpensesByDateRange(
    DateTime start,
    DateTime end,
  ) {
    try {
      final models = _localDataSource.getExpensesByDateRange(start, end);

      // Convert to entities and sort
      final entities = models.map((m) => m.toEntity()).toList();
      entities.sort((a, b) => b.date.compareTo(a.date));

      return (entities, null);
    } catch (e) {
      return (
        null,
        Failure.storage(
          message: 'Failed to load expenses for date range',
          error: e,
        ),
      );
    }
  }

  /// Watch expenses for real-time updates
  ///
  /// Returns a stream that emits latest expenses when storage changes
  /// Useful for reactive UI that auto-updates
  Stream<List<ExpenseEntity>> watchExpenses() async* {
    // Emit initial data
    final (initial, error) = getAllExpenses();
    if (error == null && initial != null) {
      yield initial;
    }

    // Listen to storage changes
    await for (final _ in _localDataSource.watchExpenses()) {
      final (expenses, err) = getAllExpenses();
      if (err == null && expenses != null) {
        yield expenses;
      }
    }
  }

  /// Get total expense count
  int getExpenseCount() {
    return _localDataSource.getExpenseCount();
  }
}
