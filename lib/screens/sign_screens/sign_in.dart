import 'package:designtraining/helper/App_AppBar.dart';
import 'package:designtraining/helper/App_Elevated.dart';
import 'package:designtraining/helper/App_Field.dart';
import 'package:designtraining/helper/App_colors.dart';
import 'package:designtraining/helper/App_textStyle.dart';
import 'package:designtraining/screens/button_nav_screens/view.dart';
import 'package:designtraining/screens/sign_screens/sign_up.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldBackGroundColor,
      appBar: CustomAppbar(
        title: "Sign In",
        icon: Icons.arrow_back_ios_outlined,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/images/sign_in.png",
              height: 310,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: 40,
            ),
            Text("Enter your Email and \n password to access your account",
                textAlign: TextAlign.start,
                style: AppTextstyle.kTextStyle18400
                    .copyWith(color: AppColors.secondColor)),
            SizedBox(
              height: 18,
            ),
            AppField(
              hintText: 'Email',
              showIcon: false,
            ),
            SizedBox(
              height: 18,
            ),
            AppField(
              hintText: 'Password',
            ),
            SizedBox(
              height: 10,
            ),
            Text("Forgote Password",
                textAlign: TextAlign.end,
                style: AppTextstyle.kTextStyle20PrimaryColor),
            SizedBox(
              height: 40,
            ),
            AppElevated(
                text: "Sign In",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ViewScreen()));
                }),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account? ",
                    style: AppTextstyle.kTextStyle18400
                        .copyWith(color: AppColors.secondColor)),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text("Sign Up ",
                      style: AppTextstyle.kTextStyle18400
                          .copyWith(color: AppColors.primaryColor)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
