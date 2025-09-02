import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile(
      {super.key,
      required this.title,
      this.leadingIcon,
      this.noShowSvg = true,
      this.assetName});
  String title;
  IconData? leadingIcon;
  bool noShowSvg;
  String? assetName;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: noShowSvg
          ? Icon(
              leadingIcon,
              color: AppColors.svgicon,
              size: 30,
            )
          : SvgPicture.asset(assetName!),
      title: Text(title, style: AppTextstyle.kTextStyle18secondColor),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: AppColors.secondColor,
        size: 20,
      ),
    );
  }
}
