import 'package:designtraining/widget/ordersItem.dart';
import 'package:flutter/material.dart';

class CustomOrderlistview extends StatelessWidget {
  CustomOrderlistview({super.key});
  List<String> prices = [r"$700", r"$452", r"$900", r"$500"];
  List<bool> isGreen = [true, false, true, false];
  List<String> orderNumber = ["344", "345", "346", "347"];
  List<String> dates = [
    "July 26, 2017",
    "October 14, 2016",
    "October 26, 2014",
    "September 18, 2014"
  ];
  List<String> orderStatus = ["delivered", "Cancel", "delivered", "Cancel"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dates.length,
        itemBuilder: (context, index) => OrdersItem(
              isGreen: isGreen[index],
              price: prices[index],
              date: dates[index],
              orderNumber: orderNumber[index],
              orderStatus: orderStatus[index],
            ));
  }
}
