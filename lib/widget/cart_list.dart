import 'package:designtraining/screens/button_nav_screens/screen/cart_screen.dart';
import 'package:designtraining/widget/cart_item.dart';
import 'package:flutter/material.dart';

class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  List<String> fruitName = [
    "Apple",
    "Banana",
    "Avocado Bowl",
    "Salmon",
    "Apple"
  ];
  List<String> fruitImage = [
    "assets/images/purepng 1.png",
    "assets/images/pumpkin.png",
    "assets/images/Avocado1.png",
    "assets/images/salmon.png",
    "assets/images/purepng 1.png",
  ];
  List<String> prices = [
    r"$4,99 kg",
    r"$5,99 kg",
    r"$24 st",
    r"$50 kg",
    r"$50 kg"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) => CartItem(
        image: fruitImage[index],
        fruitName: fruitName[index],
        price: prices[index],
      ),
      itemCount: fruitImage.length,
    );
  }
}
