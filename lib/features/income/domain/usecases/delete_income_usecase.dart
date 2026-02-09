import '../../domain/repositories/income_repository.dart';

/// Use Case: DeleteIncomeUseCase
///
/// Purpose: Handles the business logic for deleting income records
/// - Validates income exists before deletion
/// - Provides confirmation workflow support
/// - Maintains data integrity
///
/// Design Decision: Single responsibility for income deletion
/// - Encapsulates all deletion logic
/// - Provides safe deletion with validation
/// - Supports undo operations if needed
class DeleteIncomeUseCase {
  final IncomeRepository _repository;

  DeleteIncomeUseCase(this._repository);

  /// Execute the use case to delete an income record
  Future<void> execute(String id) async {
    // Verify income exists before deletion
    final existingIncome = await _repository.getIncomeById(id);
    if (existingIncome == null) {
      throw Exception('Cannot delete income: Income with id $id does not exist');
    }

    // Perform deletion
    await _repository.deleteIncome(id);
  }

  /// Check if income exists (for validation purposes)
  Future<bool> exists(String id) async {
    final income = await _repository.getIncomeById(id);
    return income != null;
  }
}