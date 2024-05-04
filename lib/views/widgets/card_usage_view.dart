import 'package:admin_dashboard/widgets/cards/my_cards_section.dart';
import 'package:admin_dashboard/widgets/transaction_history/transction_history_section.dart';
import 'package:admin_dashboard/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class CardUageView extends StatelessWidget {
  const CardUageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.only(
        left: 20,
        top: 20,
        bottom: 20,
      ),
      child: Column(
        children: [
          MyCardsSection(),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Column(
              children: [
                Divider(
                  height: 40,
                  color: Color(0xffF1F1F1),
                ),
                TransactionHistorySection()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
