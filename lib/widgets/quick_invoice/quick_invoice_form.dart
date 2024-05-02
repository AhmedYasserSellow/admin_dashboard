import 'package:admin_dashboard/widgets/quick_invoice/custom_text_field.dart';
import 'package:admin_dashboard/widgets/quick_invoice/price_drop_down_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                title: 'Customer Name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleTextField(
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                title: 'Item Name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleTextField(
                prefix: PriceDropDownMenu(),
                title: 'Item Price',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
