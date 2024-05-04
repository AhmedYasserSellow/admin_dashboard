import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.desktopLayout,
    required this.mobileLayout,
    required this.tabletLayout,
    this.mobileTabletBreakPoint = 600,
    this.tabletDesktopBreakPoint = 900,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  final double mobileTabletBreakPoint, tabletDesktopBreakPoint;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileTabletBreakPoint) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < tabletDesktopBreakPoint) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
