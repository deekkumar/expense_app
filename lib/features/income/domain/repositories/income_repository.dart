import '../../domain/entities/income_entity.dart';

/// Repository Interface: IncomeRepository
///
/// Purpose: Defines the contract for income data operations
/// - Abstracts data source implementation details
/// - Provides clean interface for use cases
/// - Enables dependency inversion principle
///
/// Design Decision: Interface segregation for flexibility
/// - Allows multiple implementations (local, remote, hybrid)
/// - Enables easy testing with mocks
/// - Supports future API integration
abstract class IncomeRepository {
  /// Get all income records
  Future<List<IncomeEntity>> getAllIncomes();

  /// Get income by ID
  Future<IncomeEntity?> getIncomeById(String id);

  /// Add new income record
  Future<IncomeEntity> addIncome(IncomeEntity income);

  /// Update existing income record
  Future<IncomeEntity> updateIncome(IncomeEntity income);

  /// Delete income record
  Future<void> deleteIncome(String id);

  /// Get incomes for specific month
  Future<List<IncomeEntity>> getIncomesByMonth(int year, int month);

  /// Get incomes for specific date range
  Future<List<IncomeEntity>> getIncomesByDateRange(DateTime start, DateTime end);

  /// Get total income for a period
  Future<double> getTotalIncomeByMonth(int year, int month);
}