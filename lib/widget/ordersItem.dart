import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:flutter/material.dart';

class OrdersItem extends StatelessWidget {
  OrdersItem(
      {super.key,
      required this.price,
      this.isGreen = true,
      required this.date,
      required this.orderNumber,
      required this.orderStatus});
  String price;
  String orderStatus;
  String date;
  String orderNumber;
  bool isGreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: ListTile(
            trailing: Text(price,
                style: AppTextstyle.kTextStyle20bold
                    .copyWith(color: AppColors.orderColor)),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.orderColor,
              child: Icon(
                Icons.shopping_basket_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            title: Text(
              "Order #$orderNumber",
              style: AppTextstyle.kTextStyle18secondColor,
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderStatus,
                  style: isGreen
                      ? AppTextstyle.kHeadText14green
                      : AppTextstyle.kHeadText14Red,
                ),
                Text(date, style: AppTextstyle.kTextStyle20SecondPrimary)
              ],
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
