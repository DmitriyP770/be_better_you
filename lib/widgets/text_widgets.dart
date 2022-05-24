import 'package:flutter/material.dart';
import 'package:be_better_you/screens/const.dart';

class HeaderText extends StatelessWidget {
  double left;
  double top;
  String text;
  double width;

  HeaderText(
      {required this.left,
      required this.top,
      required this.width,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        left: left,
        top: top,
        child: Container(
          width: width,
          height: 18,
          decoration: BoxDecoration(
            color: kgreenButton,
          ),
        ),
      ),
      Text(
        "$text",
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Kanit",
          fontSize: 48,
        ),
      ),
    ]);
  }
}
