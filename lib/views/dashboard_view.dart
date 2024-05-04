import 'package:admin_dashboard/layouts/adaptive_layout.dart';
import 'package:admin_dashboard/layouts/dasboard_tablet_layout.dart';
import 'package:admin_dashboard/layouts/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        tabletDesktopBreakPoint: 1300,
        desktopLayout: (context) => const DashboardDesktopLayout(),
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const DashboardTabletLayout(),
      ),
    );
  }
}
