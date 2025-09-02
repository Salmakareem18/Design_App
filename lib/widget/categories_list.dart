import 'package:designtraining/widget/category_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});
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
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CategoryItem(
                  color: categories[index]["color"],
                  image: categories[index]["image"],
                  text: categories[index]["text"]),
            );
          }),
    );
  }
}
