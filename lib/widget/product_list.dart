import 'package:designtraining/widget/product_item.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});

  List<Map<String, dynamic>> products = [
    {
      "image": "assets/images/purepng 1.png",
      "title": "Red Apple",
      "subTitle": "1kg,priceg",
      "price": "\$ 4,99"
    },
    {
      "image": "assets/images/PikPng 1.png",
      "title": "Orginal Banana",
      "subTitle": "1kg,priceg",
      "price": "\$ 5,99"
    },
    {
      "image": "assets/images/PikPng 1.png",
      "title": "Po banana",
      "subTitle": "1kg,priceg",
      "price": "\$ 6,99"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: ProductItem(
                  image: products[index]["image"],
                  title: products[index]["title"],
                  subTitle: products[index]["subTitle"],
                  price: products[index]["price"]),
            );
          }),
    );
  }
}
