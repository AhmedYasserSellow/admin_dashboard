import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/quick_invoice/latest_transction_list_view.dart';
import 'package:flutter/material.dart';

class LatestTransctionSection extends StatelessWidget {
  const LatestTransctionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransctionListView(),
      ],
    );
  }
}
