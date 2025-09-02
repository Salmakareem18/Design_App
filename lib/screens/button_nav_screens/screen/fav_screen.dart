import 'package:designtraining/helper/App_AppBar.dart';
import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:designtraining/widget/custom_OrderListView.dart';
import 'package:flutter/material.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackGroundColor,
        appBar: CustomAppbar(
          title: "Orders",
          icon: Icons.arrow_back_ios_new_outlined,
          bottom: TabBar(
              unselectedLabelStyle: AppTextstyle.kTextStyleTab,
              labelStyle: AppTextstyle.kTextStyleTab
                  .copyWith(color: AppColors.primaryColor),
              indicatorColor: AppColors.primaryColor,
              indicatorWeight: 5,
              tabs: [
                Tab(
                  text: "Ongoing",
                ),
                Tab(text: "History")
              ]),
        ),
        body: TabBarView(
            children: [CustomOrderlistview(), CustomOrderlistview()]),
      ),
    );
  }
}
