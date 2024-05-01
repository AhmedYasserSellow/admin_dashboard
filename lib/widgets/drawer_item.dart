import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/widgets/active_and_inactive_drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final bool isActive;
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return ActiveDrawerItem(drawerItemModel: drawerItemModel);
    } else {
      return InActiveDrawerItem(drawerItemModel: drawerItemModel);
    }
  }
}
