import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:smart_expense_tracker/features/income/domain/entities/income_entity.dart';
import 'package:smart_expense_tracker/features/income/presentation/providers/income_providers.dart';

/// Widget: IncomeListItem
///
/// Purpose: Displays a single income record in a list format
/// - Shows amount, source, date, and note
/// - Provides edit and delete actions
/// - Uses consistent styling with expense items
class IncomeListItem extends ConsumerWidget {
  final IncomeEntity income;
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const IncomeListItem({
    super.key,
    required this.income,
    this.onTap,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final formatter = NumberFormat.currency(locale: 'en_US', symbol: '\$');

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            _getSourceIcon(income.source),
            color: theme.colorScheme.onPrimaryContainer,
            size: 24,
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                income.source,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              '+${formatter.format(income.amount)}',
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              DateFormat.yMMMd().format(income.date),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            if (income.note != null && income.note!.isNotEmpty) ...[
              const SizedBox(height: 4),
              Text(
                income.note!,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ],
        ),
        trailing: _buildTrailingActions(context, ref),
        onTap: onTap,
      ),
    );
  }

  Widget? _buildTrailingActions(BuildContext context, WidgetRef ref) {
    if (onEdit == null && onDelete == null) {
      return null;
    }

    return PopupMenuButton<String>(
      icon: Icon(
        Icons.more_vert,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      onSelected: (String result) {
        switch (result) {
          case 'edit':
            onEdit?.call();
            break;
          case 'delete':
            _showDeleteConfirmation(context, ref);
            break;
        }
      },
      itemBuilder: (BuildContext context) => [
        if (onEdit != null)
          const PopupMenuItem<String>(
            value: 'edit',
            child: ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit'),
              contentPadding: EdgeInsets.zero,
            ),
          ),
        if (onDelete != null)
          const PopupMenuItem<String>(
            value: 'delete',
            child: ListTile(
              leading: Icon(Icons.delete, color: Colors.red),
              title: Text('Delete', style: TextStyle(color: Colors.red)),
              contentPadding: EdgeInsets.zero,
            ),
          ),
      ],
    );
  }

  void _showDeleteConfirmation(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Income'),
          content: const Text('Are you sure you want to delete this income record? This action cannot be undone.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
                _performDelete(ref);
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _performDelete(WidgetRef ref) async {
    try {
      final deleteUseCase = ref.read(deleteIncomeUseCaseProvider);
      await deleteUseCase.execute(income.id);
      
      // Refresh the incomes list
      ref.invalidate(incomesProvider);
      
      // Show success snackbar
      // Note: In a real app, you'd have access to ScaffoldMessenger
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(content: Text('Income deleted successfully')),
      // );
    } catch (e) {
      // Handle error
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(content: Text('Error deleting income: $e')),
      // );
    }
  }

  /// Get appropriate icon based on income source
  IconData _getSourceIcon(String source) {
    switch (source.toLowerCase()) {
      case 'salary':
        return Icons.account_balance_wallet;
      case 'freelance':
        return Icons.work;
      case 'business':
        return Icons.business;
      case 'rental':
        return Icons.apartment;
      case 'gift':
        return Icons.card_giftcard;
      default:
        return Icons.payments;
    }
  }
}