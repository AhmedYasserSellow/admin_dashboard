import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.child,
    this.padding = 20,
  });
  final Widget child;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(
          padding,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        child: child);
  }
}
