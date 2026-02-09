import '../../domain/repositories/income_repository.dart';
import '../../domain/entities/income_entity.dart';

/// Use Case: UpdateIncomeUseCase
///
/// Purpose: Handles the business logic for updating existing income records
/// - Validates income data before update
/// - Ensures income exists before modification
/// - Updates timestamps appropriately
///
/// Design Decision: Single responsibility for income updates
/// - Encapsulates all update logic
/// - Provides consistent validation
/// - Maintains audit trail with timestamps
class UpdateIncomeUseCase {
  final IncomeRepository _repository;

  UpdateIncomeUseCase(this._repository);

  /// Execute the use case to update an existing income
  /// Returns the updated IncomeEntity
  Future<IncomeEntity> execute({
    required String id,
    double? amount,
    String? source,
    DateTime? date,
    String? note,
    Map<String, dynamic>? metadata,
  }) async {
    // Get existing income
    final existingIncome = await _repository.getIncomeById(id);
    if (existingIncome == null) {
      throw Exception('Income with id $id not found');
    }

    // Create updated entity with new values
    final now = DateTime.now();
    final updatedIncome = existingIncome.copyWith(
      amount: amount ?? existingIncome.amount,
      source: source ?? existingIncome.source,
      date: date ?? existingIncome.date,
      note: note ?? existingIncome.note,
      updatedAt: now,
      metadata: metadata ?? existingIncome.metadata,
    );

    // Validate the updated entity
    final validationError = updatedIncome.validate();
    if (validationError != null) {
      throw Exception(validationError);
    }

    // Save to repository
    return await _repository.updateIncome(updatedIncome);
  }

  /// Execute with pre-created IncomeEntity
  /// Useful when entity is created elsewhere
  Future<IncomeEntity> executeWithEntity(IncomeEntity income) async {
    return await _repository.updateIncome(income);
  }
}