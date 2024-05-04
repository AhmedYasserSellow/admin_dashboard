import 'package:admin_dashboard/layouts/widgets/custom_drawer_view.dart';
import 'package:admin_dashboard/layouts/widgets/dashboard_mobile_layout_body.dart';
import 'package:flutter/material.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                DashboardboardMobileLayoutBody(),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
