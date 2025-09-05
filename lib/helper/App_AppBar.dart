import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppbar({
    super.key,
    this.icon,
    required this.title,
    this.bottom,
  });
  String title;
  IconData? icon;
  PreferredSizeWidget? bottom;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appbarBackGroundColor,
      elevation: 0,
      scrolledUnderElevation: 0,
      bottom: bottom,
      centerTitle: true,
      title: Text(title, style: AppTextstyle.kTextAPPBar),
      leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            icon,
            color: AppColors.primaryColor,
          )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
