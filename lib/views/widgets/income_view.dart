import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/custom_container.dart';
import 'package:admin_dashboard/widgets/income/income_content.dart';
import 'package:admin_dashboard/widgets/income/income_header.dart';
import 'package:flutter/material.dart';

class IncomeView extends StatelessWidget {
  const IncomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const IncomeHeader(),
          const SizedBox(
            height: 16,
          ),
          const IncomeContent(),
          const Divider(
            height: 56,
          ),
          Text(
            'See Details',
            style: AppStyles.styleSemiBold16.copyWith(
              color: const Color(0xff4EB7F2),
            ),
          ),
        ],
      ),
    );
  }
}
