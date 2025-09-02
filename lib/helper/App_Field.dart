import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:flutter/material.dart';

class AppField extends StatelessWidget {
  AppField({super.key, required this.hintText, this.showIcon, this.prefIcon});
  String hintText;
  bool? showIcon;
  IconData? prefIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.textFieldColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          prefixIcon: Icon(
            prefIcon,
            color: AppColors.hinttextFieldColor,
          ),
          suffixIcon: showIcon == false
              ? SizedBox.shrink()
              : Icon(
                  Icons.visibility_outlined,
                  color: AppColors.primaryColor,
                ),
          hintText: hintText,
          hintStyle: AppTextstyle.kTextStyleField),
    );
  }
}
