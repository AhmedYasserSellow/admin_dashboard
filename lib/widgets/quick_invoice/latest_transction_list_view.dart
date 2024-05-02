import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/app_icons.dart';
import 'package:admin_dashboard/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});
  static const List<UserInfoModel> userInfoModelList = [
    UserInfoModel(
      email: 'ahmedyasser@gmail.com',
      image: Assets.imagesAvatar1,
      name: 'Ahmed Yasser',
    ),
    UserInfoModel(
      email: 'ahmedyasser@gmail.com',
      image: Assets.imagesAvatar2,
      name: 'Ahmed Yasser',
    ),
    UserInfoModel(
      email: 'ahmedyasser@gmail.com',
      image: Assets.imagesAvatar1,
      name: 'Ahmed Yasser',
    ),
    UserInfoModel(
      email: 'ahmedyasser@gmail.com',
      image: Assets.imagesAvatar2,
      name: 'Ahmed Yasser',
    ),
    UserInfoModel(
      email: 'ahmedyasser@gmail.com',
      image: Assets.imagesAvatar1,
      name: 'Ahmed Yasser',
    ),
    UserInfoModel(
      email: 'ahmedyasser@gmail.com',
      image: Assets.imagesAvatar2,
      name: 'Ahmed Yasser',
    ),
    UserInfoModel(
      email: 'ahmedyasser@gmail.com',
      image: Assets.imagesAvatar1,
      name: 'Ahmed Yasser',
    ),
    UserInfoModel(
      email: 'ahmedyasser@gmail.com',
      image: Assets.imagesAvatar2,
      name: 'Ahmed Yasser',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoModelList
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: e),
              ),
            )
            .toList(),
      ),
    );
  }
}
