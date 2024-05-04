import 'package:admin_dashboard/widgets/cards/custom_dot.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
  });
  final int currentIndex, itemCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        itemCount,
        (index) => CustomDot(
          isActive: currentIndex == index,
        ),
      ),
    );
  }
}
