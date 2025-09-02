import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:designtraining/widget/custom_counter.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  CartItem(
      {super.key,
      required this.image,
      required this.fruitName,
      required this.price});
  String image;
  String fruitName;
  String price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dismissible(
          key: UniqueKey(),
          direction: DismissDirection.endToStart,
          background: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: AppColors.dissmisablecolor,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.delete_outline_outlined,
              color: Colors.white,
              size: 50,
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 90,
                margin: EdgeInsets.symmetric(vertical: 0),
                padding: EdgeInsets.only(right: 34, left: 34),
                child: Row(
                  spacing: 30,
                  children: [
                    Expanded(child: Image.asset(image)),
                    Expanded(
                      flex: 4,
                      child: Column(
                        spacing: 8,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            fruitName,
                            style: AppTextstyle.kTextStyle20bold
                                .copyWith(color: AppColors.secondColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomCounter(),
                              Text(price, style: AppTextstyle.kTextStyle18400)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider()
            ],
          ),
        ),
      ],
    );
  }
}
