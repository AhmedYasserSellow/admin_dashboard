import 'package:admin_dashboard/extensions/sepretator.dart';
import 'package:admin_dashboard/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/utils/app_icons.dart';
import 'package:admin_dashboard/widgets/all_expenses/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  int selectedIndex = 0;
  final List<AllExpensesItemModel> allExpensesItemModel = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2024',
      price: r'$20,150',
    ),
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Income',
      date: 'April 2024',
      price: r'$20,150',
    ),
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Expenses',
      date: 'April 2024',
      price: r'$20,150',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpensesItemModel
          .asMap()
          .entries
          .map((e) {
            int index = e.key;
            AllExpensesItemModel itemModel = e.value;
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: AllExpensesItem(
                  isSelected: selectedIndex == index,
                  allExpensesItemModel: itemModel,
                ),
              ),
            );
          })
          .seperator(
            const SizedBox(
              width: 12,
            ),
          )
          .toList(),
    );
  }
}
