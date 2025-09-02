import 'package:designtraining/helper/App_AppBar.dart';
import 'package:designtraining/helper/App_Field.dart';
import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/widget/category_item.dart';
import 'package:designtraining/widget/custom_gridview.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldBackGroundColor,
      appBar: CustomAppbar(title: "Categories"),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: AppField(
              hintText: "Search",
              showIcon: false,
              prefIcon: Icons.search,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(child: CustomGridview()),
        ],
      ),
    );
  }
}
