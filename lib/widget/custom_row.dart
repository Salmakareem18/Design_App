import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomRow extends StatelessWidget {
  CustomRow({super.key, required this.text, required this.title});
  String text;
  String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: AppTextstyle.kTextStyle18secondColor.copyWith(fontSize: 22)),
        Text(title,
            style: AppTextstyle.kTextStyle18400.copyWith(
              color: AppColors.primaryColor,
            )),
      ],
    );
  }
}
