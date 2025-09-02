import 'package:designtraining/helper/App_AppBar.dart';
import 'package:designtraining/helper/App_Elevated.dart';
import 'package:designtraining/helper/App_Field.dart';
import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldBackGroundColor,
      appBar: CustomAppbar(
        title: "Sign Up",
        icon: Icons.arrow_back_ios_outlined,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/images/sign_up.png",
              height: 280,
            ),
            SizedBox(
              height: 30,
            ),
            Text("Enter your Email and \n password to access your account.",
                textAlign: TextAlign.start,
                style: AppTextstyle.kTextStyle18400
                    .copyWith(color: AppColors.secondColor)),
            SizedBox(
              height: 18,
            ),
            AppField(
              hintText: "Name",
              showIcon: false,
            ),
            SizedBox(
              height: 8,
            ),
            AppField(
              hintText: "Email",
              showIcon: false,
            ),
            SizedBox(
              height: 8,
            ),
            AppField(hintText: "Password"),
            SizedBox(
              height: 8,
            ),
            AppField(hintText: "Confirm Password"),
            SizedBox(
              height: 30,
            ),
            AppElevated(text: "Sign Up")
          ],
        ),
      ),
    );
  }
}
