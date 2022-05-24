import 'package:flutter/material.dart';
import 'package:be_better_you/screens/const.dart';
import 'buttons.dart';

class FastingTracker extends StatelessWidget {
  const FastingTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Fast Tracker",
        style: kHeaderTextStyle,
      ),
      SizedBox(height: 20),
      Stack(children: [
        Container(
          width: 364,
          height: 191,
          decoration: BoxDecoration(
            color: kgreenButton,
            border: Border.all(),
            borderRadius: BorderRadius.circular(26.3),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(25),
          child: YellowButton(
            text: "Start Fasting Now",
            onPressed: () {},
            width: 314,
          ),
        ),
      ]),
    ]);
  }
}
