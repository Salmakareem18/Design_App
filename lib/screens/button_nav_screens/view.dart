import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/screens/button_nav_screens/screen/cart_screen.dart';
import 'package:designtraining/screens/button_nav_screens/screen/fav_screen.dart';
import 'package:designtraining/screens/button_nav_screens/screen/home.dart';
import 'package:designtraining/screens/button_nav_screens/screen/profile_screen.dart';
import 'package:designtraining/screens/button_nav_screens/screen/Explor_Ctegories.dart';
import 'package:flutter/material.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  final List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    FavScreen(),
    ProfileScreen(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: AppColors.scaffoldBackGroundColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          border: Border.all(color: Colors.white, width: 4),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.secondColor,
          backgroundColor: Colors.white,
          currentIndex: index,
          onTap: (int x) {
            setState(() {
              index = x;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_sharp), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
      body: screens[index],
    );
  }
}
