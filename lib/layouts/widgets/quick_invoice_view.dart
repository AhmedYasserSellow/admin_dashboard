import 'package:admin_dashboard/widgets/custom_container.dart';
import 'package:admin_dashboard/widgets/quick_invoice/custom_button.dart';
import 'package:admin_dashboard/widgets/quick_invoice/latest_transactions_section.dart';
import 'package:admin_dashboard/widgets/quick_invoice/quick_invoice._header.dart';
import 'package:admin_dashboard/widgets/quick_invoice/quick_invoice_form.dart';
import 'package:flutter/material.dart';

class QuickInvoiceView extends StatelessWidget {
  const QuickInvoiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransactionSection(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  title: 'Add More Details',
                  textColor: Color(0xff4EB7F2),
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: CustomButton(
                  title: 'Send Money',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
