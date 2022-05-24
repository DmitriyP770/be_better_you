import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'const.dart';
import 'package:be_better_you/widgets/buttons.dart';
import 'package:be_better_you/widgets/text_fileds.dart';
import 'current_weight.dart';

class LoginScreen extends StatelessWidget {
  static String id = '2';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 40, top: 62, right: 41),
            child: Text(
              "Welcome to Ideate Fit",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 0.9,
                fontFamily: "Kanit",
                fontSize: 48,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SignInWith_Button("Continue with Apple", Color(0xFF030002)),
          SignInWith_Button("Continue with Google", Color(0xFF307CEF)),
          SignInWith_Button("Continue with Facebook", Color(0xFF32508D)),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 47, left: 180, right: 180),
                child: Container(
                  width: 20,
                  height: 7,
                  color: Color(0xFFF4DB71),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 34, left: 180, right: 180),
                child: Text(
                  "OR",
                  style: TextStyle(fontFamily: "Kanit", fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, top: 33, right: 26),
            child: TextFieldsWidget("Enter your email", false),
          ),
          Padding(
              padding: EdgeInsets.only(left: 24, top: 15, right: 26),
              child: TextFieldsWidget("Enter your password", true)),
          Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 15),
              child: YellowButton(text: "Log In", onPressed: () {})),
          TextButton(
              onPressed: () {
                Navigator.pushNamed((context), CurrentWeightScreen.id);
              },
              child: Text(
                "Foget Password?",
                style: TextStyle(
                    fontFamily: "Kanit", fontSize: 18, color: Colors.black),
              ))
        ],
      ),
    );
  }
}
