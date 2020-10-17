import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_hackathon/screens/login_screen.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 60, right: 15, left: 15),
            child: Text(
              '"THERE ARE SO MANY REASONS TO SMILE"',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(right: 15, left: 15, bottom: 10, top: 20),
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "It's ok to feel sad sometimes, but dont forget to embrace the beauty of happiness!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Image.asset("assets/image/couns1.png"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              " So, get started to enter your happy place :)",
              style: TextStyle(
                  color: Colors.black, fontFamily: "nunito", fontSize: 17),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(LoginScreen.routeName);
              },
              child: Container(
                margin:
                    EdgeInsets.only(right: 27, left: 27, bottom: 25, top: 10),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFB40284A),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ), //center
          ),
        ],
      ),
    );
  }
}
