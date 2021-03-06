import 'package:flutter/material.dart';
import 'package:flutter_app_hackathon/screens/home_screen.dart';
import 'package:flutter_app_hackathon/screens/login_screen.dart';
import 'package:flutter_app_hackathon/screens/signup_screen.dart';
import 'package:flutter_app_hackathon/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: "Login App",
      theme: ThemeData(primaryColor: Colors.white, fontFamily: "nunito"),
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: loginpage(),
        ),
      ),
      routes: {
        SignupScreen.routeName: (ctx) => SignupScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen()
      },
    );
  }
}
