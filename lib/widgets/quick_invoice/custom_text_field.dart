import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTitleTextField extends StatelessWidget {
  const CustomTitleTextField({
    super.key,
    required this.title,
    this.prefix,
  });
  final String title;
  final Widget? prefix;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              left: 20,
            ),
            prefixIcon: prefix,
            hintStyle: AppStyles.styleRegular16.copyWith(
              color: const Color(0xffaaaaaa),
            ),
            hintText: 'Type ' '$title',
            filled: true,
            fillColor: const Color(0xffFafafa),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    );
  }
}
