import 'package:uuid/uuid.dart';
import '../../domain/repositories/income_repository.dart';
import '../../domain/entities/income_entity.dart';

/// Use Case: AddIncomeUseCase
///
/// Purpose: Handles the business logic for adding new income records
/// - Validates income data before creation
/// - Coordinates with repository for persistence
/// - Generates unique IDs when needed
///
/// Design Decision: Single responsibility for income creation
/// - Encapsulates all creation logic
/// - Provides consistent error handling
/// - Maintains business rules enforcement
class AddIncomeUseCase {
  final IncomeRepository _repository;

  AddIncomeUseCase(this._repository);

  /// Execute the use case to add a new income
  /// Returns the created IncomeEntity with generated ID
  Future<IncomeEntity> execute({
    required double amount,
    required String source,
    DateTime? date,
    String? note,
    Map<String, dynamic>? metadata,
  }) async {
    // Validate inputs
    if (amount <= 0) {
      throw Exception('Amount must be greater than 0');
    }

    if (source.isEmpty) {
      throw Exception('Source is required');
    }

    final now = DateTime.now();
    final incomeDate = date ?? now;

    // Validate date is reasonable
    if (incomeDate.isAfter(now.add(const Duration(days: 1)))) {
      throw Exception('Date cannot be too far in the future');
    }

    // Create income entity
    final income = IncomeEntity(
      id: const Uuid().v4(),
      amount: amount,
      source: source,
      date: incomeDate,
      note: note,
      createdAt: now,
      updatedAt: null,
      metadata: metadata,
    );

    // Validate the entity
    final validationError = income.validate();
    if (validationError != null) {
      throw Exception(validationError);
    }

    // Save to repository
    return await _repository.addIncome(income);
  }

  /// Execute with pre-created IncomeEntity
  /// Useful when entity is created elsewhere
  Future<IncomeEntity> executeWithEntity(IncomeEntity income) async {
    return await _repository.addIncome(income);
  }
}