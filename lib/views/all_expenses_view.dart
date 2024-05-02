import 'package:admin_dashboard/widgets/all_expenses/all_expenses_header.dart';
import 'package:admin_dashboard/widgets/all_expenses/all_expenses_list.dart';
import 'package:admin_dashboard/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesListView(),
        ],
      ),
    );
  }
}
