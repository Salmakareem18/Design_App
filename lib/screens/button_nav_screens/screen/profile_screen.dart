import 'package:designtraining/helper/App_AppBar.dart';
import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:designtraining/widget/custom_listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({
    super.key,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool iswitchchecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      appBar: CustomAppbar(
        title: "Profile",
        icon: Icons.arrow_back_ios_outlined,
      ),
      body: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomListTile(
            title: "Edit Profile",
            leadingIcon: Icons.person,
          ),
          CustomListTile(
              title: "Change Password",
              noShowSvg: false,
              assetName: "assets/images/key.svg"),
          CustomListTile(
              title: "My Cards",
              noShowSvg: false,
              assetName: "assets/images/cart.svg"),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "App Settings",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SwitchListTile(
              title: Text("Notifications",
                  style: AppTextstyle.kTextStyle18Profile),
              secondary: Icon(
                Icons.notifications,
                color: AppColors.svgicon,
                size: 33,
              ),
              activeTrackColor: AppColors.primaryColor,
              inactiveTrackColor: AppColors.greyColor,
              value: iswitchchecked,
              onChanged: (value) {
                setState(() {
                  iswitchchecked = value;
                });
              }),
          ListTile(
            title: Text("Language", style: AppTextstyle.kTextStyle18Profile),
            leading: SvgPicture.asset("assets/images/langicon.svg"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("English",
                    style: AppTextstyle.kTextStyle18Profile
                        .copyWith(fontWeight: FontWeight.w400)),
                Icon(Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondColor)
              ],
            ),
          ),
          CustomListTile(
            title: "LogOut",
            noShowSvg: false,
            assetName: "assets/images/logout.svg",
          )
        ],
      ),
    );
  }
}
