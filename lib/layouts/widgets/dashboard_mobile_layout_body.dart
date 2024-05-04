import 'package:admin_dashboard/extensions/sepretator.dart';
import 'package:admin_dashboard/layouts/widgets/all_expenses_view.dart';
import 'package:admin_dashboard/layouts/widgets/card_usage_view.dart';
import 'package:admin_dashboard/layouts/widgets/income_view.dart';
import 'package:admin_dashboard/layouts/widgets/quick_invoice_view.dart';
import 'package:flutter/material.dart';

class DashboardboardMobileLayoutBody extends StatelessWidget {
  const DashboardboardMobileLayoutBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AllExpensesView(),
        const QuickInvoiceView(),
        const CardUageView(),
        const IncomeView(),
      ]
          .seperator(const SizedBox(
            height: 24,
          ))
          .toList(),
    );
  }
}
