import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/transaction_history/transaction_item_list_view.dart';
import 'package:flutter/material.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20(context),
            ),
            const Spacer(),
            Text(
              'See All',
              style: AppStyles.styleMedium16(context).copyWith(
                color: const Color(0xff4EB7F2),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2024',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xffaaaaaa),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionItemsListView(),
      ],
    );
  }
}
