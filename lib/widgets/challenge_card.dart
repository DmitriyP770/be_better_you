import 'package:flutter/material.dart';
import 'package:be_better_you/screens/const.dart';

class ChallengeCardWidget extends StatefulWidget {
  final String challengeName;
  final String period;

  ChallengeCardWidget({required this.challengeName, required this.period});

  @override
  _ChallengeCardWidgetState createState() => _ChallengeCardWidgetState();
}

class _ChallengeCardWidgetState extends State<ChallengeCardWidget> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color(0xFFEDEEED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.64),
        ),
        borderOnForeground: true,
        child: ListTile(
          leading: IconButton(
            icon: Icon(
              Icons.circle,
              color: isActive == true ? kActiveColor : Color(0xFFC4C4C4),
            ),
            onPressed: () {
              setState(() {
                if (isActive == true) {
                  isActive = false;
                } else {
                  isActive = true;
                }
              });
            },
          ),
          title: Text(
            widget.challengeName,
            style: kChallengeCardLeadingTS,
          ),
          trailing: Text(
            widget.period,
            style: const TextStyle(
                fontSize: 18, fontFamily: "Kanit", color: Color(0xFF686666)),
          ),
        ));
  }
}
