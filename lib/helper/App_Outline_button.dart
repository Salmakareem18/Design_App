import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:flutter/material.dart';

class AppOutlineButton extends StatelessWidget {
  AppOutlineButton({super.key, required this.text, required this.onPressed});
  String text;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: AppColors.primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        fixedSize: Size(380, 50),
      ),
      child: Text(text, style: AppTextstyle.kTextStyleButton),
    );
  }
}
