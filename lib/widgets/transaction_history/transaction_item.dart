import 'package:admin_dashboard/models/transaction_item_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionModel,
  });
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: const Color(0xfffafafa),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactionModel.title,
                style: AppStyles.styleSemiBold16(context),
              ),
              Text(
                transactionModel.date,
                style: AppStyles.styleRegular16(context).copyWith(
                  color: const Color(0xffaaaaaa),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            r'$' '${transactionModel.amount}',
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: transactionModel.isDeposit
                  ? const Color(0xff7DD97B)
                  : const Color(0xffF3735E),
            ),
          )
        ],
      ),
    );
  }
}
