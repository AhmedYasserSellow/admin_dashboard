import 'package:admin_dashboard/models/income_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/cards/custom_dot.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({
    super.key,
    required this.incomeModel,
  });
  final IncomeModel incomeModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDot(
          color: incomeModel.color,
          height: 12,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          incomeModel.title,
          style: AppStyles.styleRegular16,
        ),
        const Spacer(),
        Text(
          '${incomeModel.value}' '%',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xff208CC8),
          ),
        ),
      ],
    );
  }
}
