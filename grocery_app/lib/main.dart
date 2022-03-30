import 'package:flutter/material.dart';
import 'package:grocery_app/loginScreen.dart';
import 'package:grocery_app/mainPage.dart';
import 'package:grocery_app/registerPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "mainpage": (context) => MainPage(),
        "signuppage": (context) => SignUpPage(),
      },
    );
  }
}
