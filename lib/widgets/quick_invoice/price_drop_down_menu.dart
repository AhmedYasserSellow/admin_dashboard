import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PriceDropDownMenu extends StatelessWidget {
  const PriceDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      leadingIcon: const SizedBox(
        width: 10,
      ),
      initialSelection: 'USD',
      textStyle: AppStyles.styleRegular16,
      requestFocusOnTap: false,
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
      menuStyle: MenuStyle(
        surfaceTintColor:
            MaterialStateColor.resolveWith((states) => Colors.white),
        backgroundColor:
            MaterialStateColor.resolveWith((states) => Colors.white),
      ),
      selectedTrailingIcon: Transform.rotate(
        angle: 1.57079633,
        child: const Icon(
          Icons.chevron_left,
        ),
      ),
      trailingIcon: Transform.rotate(
        angle: -1.57079633,
        child: const Icon(
          Icons.chevron_left,
        ),
      ),
      enableSearch: false,
      dropdownMenuEntries: const [
        DropdownMenuEntry(value: 'USD', label: 'USD'),
        DropdownMenuEntry(value: 'EUR', label: 'EUR'),
        DropdownMenuEntry(value: 'GBP', label: 'GBP'),
        DropdownMenuEntry(value: 'EGP', label: 'EGP'),
      ],
    );
  }
}
