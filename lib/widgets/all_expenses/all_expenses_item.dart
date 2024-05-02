import 'package:admin_dashboard/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/widgets/all_expenses/active_and_inactive_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key,
      required this.allExpensesItemModel,
      required this.isSelected});

  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
    } else {
      return InActiveAllExpensesItem(
          allExpensesItemModel: allExpensesItemModel);
    }
  }
}
