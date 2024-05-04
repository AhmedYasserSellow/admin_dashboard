import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/app_icons.dart';
import 'package:admin_dashboard/widgets/drawer/drawer_items_list_view.dart';
import 'package:admin_dashboard/widgets/drawer/setting_section.dart';
import 'package:admin_dashboard/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                email: 'ahmedyasser3554@gmail.com',
                image: Assets.imagesAvatar3,
                name: 'Ahmed Yasser',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: SettingsSection(),
          ),
        ],
      ),
    );
  }
}
