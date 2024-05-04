import 'package:admin_dashboard/extensions/sepretator.dart';
import 'package:admin_dashboard/models/income_model.dart';
import 'package:admin_dashboard/widgets/income/income_chart.dart';
import 'package:admin_dashboard/widgets/income/income_details.dart';
import 'package:flutter/material.dart';

class IncomeContent extends StatelessWidget {
  const IncomeContent({super.key});

  static const List<IncomeModel> incomeList = [
    IncomeModel(
      color: Color(0xff208CC8),
      title: 'Design Service',
      value: '40',
    ),
    IncomeModel(
      color: Color(0xff4EB7F2),
      title: 'Design Product',
      value: '25',
    ),
    IncomeModel(
      color: Color(0xff064061),
      title: 'Product Royalti',
      value: '20',
    ),
    IncomeModel(
      color: Color(0xffE2DECD),
      title: 'Others',
      value: '22',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: IncomeChart(),
        ),
        const SizedBox(
          width: 40,
        ),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: incomeList
                .map(
                  (e) => IncomeDetails(incomeModel: e),
                )
                .seperator(
                  const SizedBox(
                    height: 12,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
