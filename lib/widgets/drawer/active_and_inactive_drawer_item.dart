import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          drawerItemModel.image,
        ),
        title: Text(
          drawerItemModel.title,
          style: AppStyles.styleRegular16(context),
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          drawerItemModel.image,
        ),
        title: Text(
          drawerItemModel.title,
          style: AppStyles.styleBold16(context),
        ),
        trailing: Container(
          color: const Color(0xff4EB7F2),
          width: 3.27,
        ),
      ),
    );
  }
}
