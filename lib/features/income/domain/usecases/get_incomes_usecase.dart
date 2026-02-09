import '../../domain/repositories/income_repository.dart';
import '../../domain/entities/income_entity.dart';

/// Use Case: GetIncomesUseCase
///
/// Purpose: Handles retrieving income records with various filters
/// - Provides flexible querying capabilities
/// - Supports sorting and pagination patterns
/// - Encapsulates data access logic
///
/// Design Decision: Unified access point for income retrieval
/// - Single interface for all read operations
/// - Supports various query patterns
/// - Maintains consistent data formatting
class GetIncomesUseCase {
  final IncomeRepository _repository;

  GetIncomesUseCase(this._repository);

  /// Get all income records
  /// Returns sorted list (newest first by default)
  Future<List<IncomeEntity>> getAllIncomes() async {
    return await _repository.getAllIncomes();
  }

  /// Get income by ID
  /// Returns null if not found
  Future<IncomeEntity?> getIncomeById(String id) async {
    return await _repository.getIncomeById(id);
  }

  /// Get incomes for specific month
  /// Useful for monthly summaries and analytics
  Future<List<IncomeEntity>> getIncomesByMonth(int year, int month) async {
    return await _repository.getIncomesByMonth(year, month);
  }

  /// Get incomes for specific date range
  /// Useful for custom reporting periods
  Future<List<IncomeEntity>> getIncomesByDateRange(
    DateTime start, 
    DateTime end
  ) async {
    return await _repository.getIncomesByDateRange(start, end);
  }

  /// Get total income for a specific month
  /// Optimized calculation without loading all entities
  Future<double> getTotalIncomeByMonth(int year, int month) async {
    return await _repository.getTotalIncomeByMonth(year, month);
  }

  /// Get recent incomes (last N records)
  /// Useful for dashboard displays
  Future<List<IncomeEntity>> getRecentIncomes(int limit) async {
    final allIncomes = await getAllIncomes();
    return allIncomes.take(limit).toList();
  }

  /// Get incomes by source
  /// Useful for source-based analytics
  Future<List<IncomeEntity>> getIncomesBySource(String source) async {
    final allIncomes = await getAllIncomes();
    return allIncomes.where((income) => income.source == source).toList();
  }

  /// Get incomes with amount above threshold
  /// Useful for identifying significant income events
  Future<List<IncomeEntity>> getSignificantIncomes(double minAmount) async {
    final allIncomes = await getAllIncomes();
    return allIncomes.where((income) => income.amount >= minAmount).toList();
  }
}