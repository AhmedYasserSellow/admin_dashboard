import 'package:admin_dashboard/views/widgets/all_expenses_view.dart';
import 'package:admin_dashboard/views/widgets/custom_drawer_view.dart';
import 'package:admin_dashboard/views/widgets/income_view.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_view.dart';
import 'package:admin_dashboard/views/widgets/card_usage_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()), // Drawer
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 5,
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          AllExpensesView(),
                          QuickInvoiceView(),
                        ],
                      )), //Transction Section
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        CardUageView(),
                        IncomeView(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
