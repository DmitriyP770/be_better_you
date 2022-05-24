import 'package:be_better_you/screens/home.dart';
import 'package:be_better_you/widgets/buttons.dart';
import 'package:be_better_you/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'package:be_better_you/widgets/challenge_card.dart';

class InitialChallengePage extends StatefulWidget {
  static String id = '8';
  const InitialChallengePage({Key? key}) : super(key: key);

  @override
  _InitialChallengePageState createState() => _InitialChallengePageState();
}

class _InitialChallengePageState extends State<InitialChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackGreyButton(),
                  const Text(
                    "Q/5",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Kanit",
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            HeaderText(
                left: 0,
                top: 110,
                width: 213,
                text: "Set Your Initial Challenge!"),
            Text(
              "We are recommending some challenge according to your data.you can choose and add new challenges any time.",
              style: kregularTextStyle,
            ),
            const SizedBox(
              height: 25,
            ),
            ChallengeCardWidget(
                challengeName: "100 Push Up", period: "30 Days"),
            Padding(
              padding: const EdgeInsets.only(top: 9),
              child: Container(
                width: 364,
                height: 64,
                decoration: BoxDecoration(
                    color: const Color(0xFFEDEEED),
                    borderRadius: BorderRadius.circular(16.64)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 18, top: 18, bottom: 18),
                  child: Text(
                    "Add a new challenge",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Kanit",
                        color: Colors.black26),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: GreenButton(
                  text: "Complete",
                  onpressed: () {
                    Navigator.pushNamed(context, HomeScreen.id);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
