import 'package:admin_dashboard/views/all_expenses_view.dart';
import 'package:admin_dashboard/views/custom_drawer_view.dart';
import 'package:admin_dashboard/views/quick_invoice_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()), // Drawer
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                AllExpensesView(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoiceView(),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
