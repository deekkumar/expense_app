import 'package:uuid/uuid.dart';
import '../../domain/repositories/income_repository.dart';
import '../../domain/entities/income_entity.dart';
import '../local/income_local_data_source.dart';

/// Repository Implementation: IncomeRepositoryImpl
///
/// Purpose: Implements income repository contract using local data source
/// - Bridges domain layer with data layer
/// - Handles business logic around data operations
/// - Provides validation and error handling
///
/// Design Decision: Thin repository pattern
/// - Minimal business logic in repository
/// - Delegates to data source for persistence
/// - Focus on coordination and validation
class IncomeRepositoryImpl implements IncomeRepository {
  final IncomeLocalDataSource _localDataSource;

  IncomeRepositoryImpl(this._localDataSource);

  @override
  Future<List<IncomeEntity>> getAllIncomes() async {
    return await _localDataSource.getAllIncomes();
  }

  @override
  Future<IncomeEntity?> getIncomeById(String id) async {
    return await _localDataSource.getIncomeById(id);
  }

  @override
  Future<IncomeEntity> addIncome(IncomeEntity income) async {
    // Validate income before saving
    final validationError = income.validate();
    if (validationError != null) {
      throw Exception('Invalid income: $validationError');
    }

    // Ensure ID is set (should be done by caller, but double-check)
    if (income.id.isEmpty) {
      throw Exception('Income ID cannot be empty');
    }

    return await _localDataSource.addIncome(income);
  }

  @override
  Future<IncomeEntity> updateIncome(IncomeEntity income) async {
    // Validate income before updating
    final validationError = income.validate();
    if (validationError != null) {
      throw Exception('Invalid income: $validationError');
    }

    // Check if income exists
    final existingIncome = await _localDataSource.getIncomeById(income.id);
    if (existingIncome == null) {
      throw Exception('Cannot update income: Income with id ${income.id} does not exist');
    }

    return await _localDataSource.updateIncome(income);
  }

  @override
  Future<void> deleteIncome(String id) async {
    // Check if income exists before deleting
    final existingIncome = await _localDataSource.getIncomeById(id);
    if (existingIncome == null) {
      throw Exception('Cannot delete income: Income with id $id does not exist');
    }

    await _localDataSource.deleteIncome(id);
  }

  @override
  Future<List<IncomeEntity>> getIncomesByMonth(int year, int month) async {
    return await _localDataSource.getIncomesByMonth(year, month);
  }

  @override
  Future<List<IncomeEntity>> getIncomesByDateRange(DateTime start, DateTime end) async {
    return await _localDataSource.getIncomesByDateRange(start, end);
  }

  @override
  Future<double> getTotalIncomeByMonth(int year, int month) async {
    return await _localDataSource.getTotalIncomeByMonth(year, month);
  }

  /// Create a new income entity with proper defaults
  /// Helper method for creating valid income entities
  IncomeEntity createIncome({
    required double amount,
    required String source,
    DateTime? date,
    String? note,
    Map<String, dynamic>? metadata,
  }) {
    final now = DateTime.now();
    return IncomeEntity(
      id: const Uuid().v4(),
      amount: amount,
      source: source,
      date: date ?? now,
      note: note,
      createdAt: now,
      updatedAt: null,
      metadata: metadata,
    );
  }
}