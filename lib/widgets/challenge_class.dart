import 'dart:collection';

import 'package:be_better_you/screens/const.dart';
import 'package:be_better_you/screens/minutes_challenge.dart';
import 'package:flutter/material.dart';

enum ChallengeType { Plank, PushUp, Squat, Run, Crunch }

class Challenge {
  ChallengeType challengeType;
  int reps;

  Challenge({
    required this.challengeType,
    required this.reps,
  });

  static Map<ChallengeType, Image> iconsMap = {
    ChallengeType.Plank: Image.asset("images/plank.png"),
    ChallengeType.PushUp: Image.asset("images/pushup.png"),
    ChallengeType.Run: Image.asset("images/run.png"),
    ChallengeType.Crunch: Image.asset("images/crunch.png"),
  };

  Image? image;
  void setImage() {
    if (iconsMap.containsKey(challengeType)) {
      image = iconsMap[challengeType];
    }
  }
}

class ChallengeWidget extends StatefulWidget {
  int reps;
  ChallengeType challengeType;

  ChallengeWidget(this.reps, this.challengeType);

  @override
  _ChallengeWidgetState createState() => _ChallengeWidgetState();
}

class _ChallengeWidgetState extends State<ChallengeWidget> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 99,
        decoration: BoxDecoration(
            color: isActive == true ? kActiveColor : kInactiveBoxColor,
            borderRadius: BorderRadius.circular(26.3),
            border: Border.all(
              color: Colors.black,
              width: 1,
            )),
        child: Center(
          child: ListTile(
            leading: Stack(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: kgreenButton,
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child:
                      Center(child: Challenge.iconsMap[widget.challengeType]),
                ),
              ],
            ),
            title: const Text(
              "Day 01",
              style: TextStyle(
                  fontFamily: "Kanit", fontSize: 18, color: Colors.black26),
            ),
            subtitle: Text(
              widget.reps.toString(),
              style: TextStyle(fontSize: 24, fontFamily: "Kanit"),
            ),
            trailing: Container(
              width: 76,
              height: 38,
              decoration: BoxDecoration(
                color: isActive == true ? Colors.grey : kgreenButton,
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Center(
                child: Text(
                  isActive == true ? "Done" : "Start",
                  style: TextStyle(
                    fontSize: 15,
                    color: isActive == true ? Colors.black26 : Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        if (isActive == true) {
          isActive = false;
        } else {
          isActive = true;
          Navigator.pushNamed(context, MinutesChallengeScreen.id);
        }
        setState(() {});
      },
    );
  }
}
