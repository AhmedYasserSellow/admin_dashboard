import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      child: ListTile(
        leading: SvgPicture.asset(
          userInfoModel.image,
        ),
        title: Text(
          userInfoModel.name,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          userInfoModel.email,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
