import 'package:admin_dashboard/extensions/sepretator.dart';
import 'package:admin_dashboard/models/transaction_item_model.dart';
import 'package:admin_dashboard/widgets/transaction_history/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionItemsListView extends StatelessWidget {
  const TransactionItemsListView({super.key});
  static const List<TransactionModel> transactionList = [
    TransactionModel(
      amount: '1000',
      date: '13 April 2024',
      isDeposit: true,
      title: 'Padel CLub Project',
    ),
    TransactionModel(
      amount: '500',
      date: '13 April 2024',
      isDeposit: true,
      title: 'Khdmaty Project',
    ),
    TransactionModel(
      amount: '500',
      date: '13 April 2024',
      isDeposit: false,
      title: 'Fortnite Skins',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionList
          .map(
            (e) => TransactionItem(
              transactionModel: e,
            ),
          )
          .seperator(
            const SizedBox(
              height: 12,
            ),
          )
          .toList(),
    );
  }
}
