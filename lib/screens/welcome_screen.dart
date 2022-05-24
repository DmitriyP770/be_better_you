import 'package:be_better_you/screens/sign_up_screen.dart';
import 'package:be_better_you/widgets/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'const.dart';
import 'package:be_better_you/widgets/buttons.dart';
import 'package:be_better_you/screens/login_screen.dart';
import 'sign_up_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = '1';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4DB71),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 51, top: 82, right: 30),
            child: Text(
              "A complete app for your health",
              style: TextStyle(
                fontFamily: "Kanit",
                fontSize: 48,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          MyOwnCarousel(),
          GreenButton(
              text: "Try for free",
              onpressed: () {
                Navigator.pushNamed(context, SignUpPage.id);
              }),
          Row(
            textBaseline: TextBaseline.ideographic,
            children: [
              Container(
                margin: EdgeInsets.only(left: 76, bottom: 54),
                child: const Text(
                  "Already Have an Account?",
                  style: TextStyle(fontFamily: "Kanit", fontSize: 18),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 23, bottom: 54),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Kanit",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
