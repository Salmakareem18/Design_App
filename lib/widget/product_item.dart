import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  ProductItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.price});
  String image;
  String title;
  String subTitle;
  String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 2,
      child: SizedBox(
        width: 140,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Image.asset(
                  image,
                  height: 70,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(title, style: AppTextstyle.kTextStyle18secondColor),
              Text(
                subTitle,
                style: TextStyle(
                    color: Color(0xff929292),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(price, style: AppTextstyle.kTextStyle20bold),
                  Container(
                      decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                        color: AppColors.whiteColor,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
