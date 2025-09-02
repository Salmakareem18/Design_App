import 'package:designtraining/screens/button_nav_screens/screen/home.dart';
import 'package:designtraining/screens/button_nav_screens/view.dart';
import 'package:designtraining/screens/sign_screens/sign_in.dart';
import 'package:designtraining/screens/sign_screens/sign_up.dart';
import 'package:designtraining/screens/welcome.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ViewScreen(),
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
    );
  }
}
