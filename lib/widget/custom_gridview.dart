import 'package:designtraining/widget/category_item.dart';
import 'package:flutter/material.dart';

class CustomGridview extends StatelessWidget {
  CustomGridview({super.key});
  List<Map<String, dynamic>> categories = [
    {
      "color": Color(0xffEDD0FF),
      "image": "assets/images/Fruit.png",
      "text": "Fruits",
    },
    {
      "color": Color(0xffFFD9BA),
      "image": "assets/images/pumpkin.png",
      "text": "Vegtables",
    },
    {
      "color": Color(0xffFACCCC),
      "image": "assets/images/Meat.png",
      "text": "Meat",
    },
    {
      "color": Color(0xffFBC1BD),
      "image": "assets/images/Fish.png",
      "text": "Fish",
    },
    {
      "color": Color(0xffFFE299),
      "image": "assets/images/Shrimp.png",
      "text": "Sea Food",
    },
    {
      "color": Color(0xffD3E5C4),
      "image": "assets/images/juice.png",
      "text": "Juice",
    },
    {
      "color": Color(0xffDAF2FC),
      "image": "assets/images/egg.png",
      "text": "Egg&Milk",
    },
    {
      "color": Color(0xffFFDEF6),
      "image": "assets/images/ice.png",
      "text": "Ice Cream",
    },
    {
      "color": Color(0xffFECA97),
      "image": "assets/images/cake.png",
      "text": "Cake",
    },
    {
      "color": Color(0xffFFC0C0),
      "image": "assets/images/drink.png",
      "text": "Drink",
    },
    {
      "color": Color(0xffD6FAE9),
      "image": "assets/images/handwash.png",
      "text": "Hand Wash",
    },
    {
      "color": Color(0xffFBC1BD),
      "image": "assets/images/Fish.png",
      "text": "Fish",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 70 / 100),
        itemCount: categories.length,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(7),
              child: CategoryItem(
                  color: categories[index]["color"],
                  image: categories[index]["image"],
                  text: categories[index]["text"]),
            ));
  }
}
