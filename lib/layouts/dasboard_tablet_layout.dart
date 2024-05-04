import 'package:admin_dashboard/views/widgets/custom_drawer_view.dart';
import 'package:admin_dashboard/views/widgets/all_expenses_view.dart';
import 'package:admin_dashboard/views/widgets/income_view.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_view.dart';
import 'package:admin_dashboard/views/widgets/card_usage_view.dart';
import 'package:flutter/material.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesView(),
                QuickInvoiceView(),
                CardUageView(),
                IncomeView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
