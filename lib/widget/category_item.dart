import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  CategoryItem(
      {super.key,
      required this.color,
      required this.image,
      required this.text});
  Color color;
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 55,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              image,
              fit: BoxFit.contain,
              width: 80,
              height: 75,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(text, style: AppTextstyle.kTextStyle18400)
      ],
    );
  }
}
