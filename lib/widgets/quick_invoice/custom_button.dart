import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      this.backgroundColor = const Color(0xff4EB7F2),
      this.textColor});
  final Color backgroundColor;
  final Color? textColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            surfaceTintColor: backgroundColor,
            foregroundColor: backgroundColor,
            shadowColor: backgroundColor,
            disabledBackgroundColor: backgroundColor,
            disabledForegroundColor: backgroundColor,
            elevation: 0,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
              12,
            ))),
        onPressed: null,
        child: Text(
          title,
          style: AppStyles.styleSemiBold18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
