import 'package:designtraining/helper/App_Elevated.dart';
import 'package:designtraining/helper/App_Outline_button.dart';
import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:designtraining/screens/sign_screens/sign_in.dart';
import 'package:designtraining/screens/sign_screens/sign_up.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/onboarding.png",
              height: 360,
              width: double.infinity,
            ),
            SizedBox(
              height: 35,
            ),
            Text("Welcome to our app",
                style: AppTextstyle.kTextStyle20SecondColor),
            SizedBox(
              height: 16,
            ),
            Text(
                "Shop online and get groceries\n delivered from stores to your home\n in as fast as 1 hour .",
                textAlign: TextAlign.center,
                style: AppTextstyle.kTextStyle20SecondColor),
            SizedBox(
              height: 50,
            ),
            AppElevated(
                text: "Sign Up",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                }),
            SizedBox(
              height: 16,
            ),
            AppOutlineButton(
              text: "Sign In",
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
            )
          ],
        ),
      ),
    );
  }
}
