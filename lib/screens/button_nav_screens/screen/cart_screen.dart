import 'package:designtraining/helper/App_AppBar.dart';
import 'package:designtraining/helper/App_Elevated.dart';
import 'package:designtraining/helper/App_Field.dart';
import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/widget/cart_item.dart';
import 'package:designtraining/widget/cart_list.dart';
import 'package:designtraining/widget/custom_counter.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  CartScreen({
    super.key,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.scaffoldBackGroundColor,
          appBar: CustomAppbar(
            title: "Cart",
            icon: Icons.arrow_back_ios_outlined,
          ),
          body: Column(
            children: [
              Expanded(child: CartList()),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: AppElevated(text: "CheckOut"),
              )
            ],
          )),
    );
  }
}
