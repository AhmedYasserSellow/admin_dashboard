import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({
    super.key,
    this.isActive = false,
    this.height = 8,
    this.color = const Color(0xffE8E8E8),
  });
  final bool isActive;
  final double height;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
      ),
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        width: isActive ? 32 : height,
        height: height,
        decoration: ShapeDecoration(
          color: isActive ? const Color(0xff4EB7F2) : color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
