import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utils/app_icons.dart';
import 'package:admin_dashboard/widgets/drawer/active_and_inactive_drawer_item.dart';
import 'package:flutter/material.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: SizedBox(
            height: 20,
          ),
        ),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            image: Assets.imagesSettings,
            title: 'Setting system',
          ),
        ),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            image: Assets.imagesLogout,
            title: 'Logout',
          ),
        ),
        SizedBox(
          height: 48,
        ),
      ],
    );
  }
}
