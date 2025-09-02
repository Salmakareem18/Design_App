import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/screens/button_nav_screens/screen/fav_screen.dart';
import 'package:designtraining/screens/button_nav_screens/screen/Explor_Ctegories.dart';
import 'package:designtraining/widget/categories_list.dart';
import 'package:designtraining/widget/custom_row.dart';
import 'package:designtraining/widget/product_item.dart';
import 'package:designtraining/widget/product_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 32, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 44,
            ),
            Image.asset(
              "assets/images/Home (2).png",
              height: 190,
              width: 370,
            ),
            SizedBox(
              height: 50,
            ),
            CustomRow(text: "Categories", title: "See All"),
            SizedBox(
              height: 50,
            ),
            Expanded(child: CategoriesListView()),
            SizedBox(
              height: 60,
            ),
            CustomRow(text: "Popular Deals", title: "See All"),
            SizedBox(
              height: 50,
            ),
            Expanded(child: ProductList()),
          ],
        ),
      ),
    );
  }
}
