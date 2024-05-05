import 'package:admin_dashboard/layouts/widgets/custom_drawer_view.dart';
import 'package:admin_dashboard/layouts/widgets/dashboard_mobile_layout_body.dart';
import 'package:flutter/material.dart';

class DashboardMobileLayout extends StatefulWidget {
  const DashboardMobileLayout({super.key});

  @override
  State<DashboardMobileLayout> createState() => _DashboardMobileLayoutState();
}

class _DashboardMobileLayoutState extends State<DashboardMobileLayout> {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: const Color(0xfffafafa),
      ),
      drawer: const SizedBox(
        width: 300,
        child: CustomDrawer(),
      ),
      body:
          const SingleChildScrollView(child: DashboardboardMobileLayoutBody()),
    );
  }
}
