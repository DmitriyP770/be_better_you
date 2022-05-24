import 'package:be_better_you/widgets/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static const String id = '3';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40, right: 41, top: 60),
              child: Stack(
                children: [
                  Positioned(
                    left: 52,
                    top: 60,
                    child: Container(
                      color: Color(0xFFF4DB71),
                      height: 18,
                      width: 204,
                    ),
                  ),
                  Text(
                    "Welcome to Ideate Fit",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 0.9,
                      fontFamily: "Kanit",
                      fontSize: 48,
                    ),
                  )
                ],
              ),
            ),
            SignInWith_Button(
              "Continue with Apple",
              Color(0xFF030002),
            ),
            SignInWith_Button(
              "Continue with Google",
              Color(0xFF307CEF),
            ),
            SignInWith_Button(
              "Continue with Facebook",
              Color(0xFF32508D),
            ),
            SizedBox(
              height: 14,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 197, top: 27),
                  child: Container(
                    color: Color(0xFFF4DB71),
                    height: 7,
                    width: 20,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 14, left: 197),
                  child: Text(
                    "Or",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Kanit",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 15, right: 26),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter your name",
                    hintStyle: const TextStyle(
                        color: Color(0xFF54000000),
                        fontFamily: "Kanit",
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.64),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, top: 15, right: 26),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
                        color: Color(0xFF54000000),
                        fontFamily: "Kanit",
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.64),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, top: 15, right: 26),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Create your password",
                    hintStyle: TextStyle(
                        color: Color(0xFF54000000),
                        fontFamily: "Kanit",
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.64),
                    )),
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 20),
                child: GreenButton(text: "Sign Up", onpressed: () {})),
          ],
        ),
      ),
    );
  }
}
