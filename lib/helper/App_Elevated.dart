import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:flutter/material.dart';

class AppElevated extends StatelessWidget {
  AppElevated({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          fixedSize: Size(380, 50),
          backgroundColor: AppColors.primaryColor,
        ),
        child: Text(text,
            style: AppTextstyle.kTextStyleButton
                .copyWith(color: AppColors.whiteColor)));
  }
}
