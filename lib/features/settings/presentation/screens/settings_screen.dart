import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_expense_tracker/core/services/export_service.dart';
import 'package:smart_expense_tracker/core/services/security_service.dart';
import 'package:smart_expense_tracker/features/expenses/presentation/providers/expense_providers.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          _buildSectionHeader(context, 'General'),
          ListTile(
            leading: const Icon(Icons.dark_mode_outlined),
            title: const Text('Theme'),
            subtitle: const Text('System Default'),
            onTap: () {}, // Placeholder for theme switcher
          ),

          _buildSectionHeader(context, 'Data'),
          ListTile(
            leading: const Icon(Icons.download_outlined),
            title: const Text('Export CSV'),
            subtitle: const Text('Share your expenses report'),
            onTap: () async {
              final expensesAsync = ref.read(expensesProvider);
              if (expensesAsync.hasValue && expensesAsync.value!.isNotEmpty) {
                await ExportService.exportExpensesToCSV(expensesAsync.value!);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('No data to export')),
                );
              }
            },
          ),

          _buildSectionHeader(context, 'Security'),
          SwitchListTile(
            secondary: const Icon(Icons.fingerprint),
            title: const Text('App Lock'),
            subtitle: const Text('Biometric authentication on startup'),
            value: false, // In a real app, bind to a preference provider
            onChanged: (val) async {
              if (val) {
                final success = await SecurityService().authenticate();
                if (success && context.mounted) {
                  // Enable lock logic here
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Authentication Verified')),
                  );
                }
              }
            },
          ),

          _buildSectionHeader(context, 'About'),
          const ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Version'),
            subtitle: Text('1.0.0 Pro'),
          ),

          if (kDebugMode) ...[
            _buildSectionHeader(context, 'Debug'),
            ListTile(
              leading: const Icon(
                Icons.bug_report_outlined,
                color: Colors.orange,
              ),
              title: const Text('Seed Dummy Data'),
              subtitle: const Text('Add sample expenses for testing'),
              onTap: () async {
                final notifier = ref.read(expensesProvider.notifier);
                await notifier.seedDummyData();
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Dummy data added successfully'),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              },
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
