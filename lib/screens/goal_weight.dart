import 'package:be_better_you/screens/gender_selection.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'package:be_better_you/widgets/buttons.dart';
import 'package:be_better_you/domain/data/user_data.dart';

class GoalWeightScreen extends StatefulWidget {
  static String id = "5";

  @override
  _GoalWeightScreenState createState() => _GoalWeightScreenState();
}

class _GoalWeightScreenState extends State<GoalWeightScreen> {
  Color kgButtonColor = kActiveColor;
  Color lbButtonColor = kInactiveColor;
  double goalWeight = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 59, left: 25, right: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 57,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10.4),
                        border: Border.all(
                          width: 1,
                          color: Colors.black,
                        )),
                    child: const Center(
                        child: Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Kanit",
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                  ),
                ),
                const Text(
                  "Q/2",
                  style: const TextStyle(
                      fontSize: 18,
                      fontFamily: "Kanit",
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Stack(children: [
              Positioned(
                left: 125,
                top: 100,
                child: Container(
                  width: 148,
                  height: 18,
                  decoration: BoxDecoration(
                    color: kgreenButton,
                  ),
                ),
              ),
              const Text(
                "What’s Your Goal Weight?",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Kanit",
                  fontSize: 46,
                ),
              ),
            ]),
            Text(
              "Set a goal and let’s work together.we will reach the goal soon 😉",
              style: kregularTextStyle,
            ),
            const SizedBox(
              height: 43,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChoosingButton(
                  measureUnit: "Kg",
                  color: kgButtonColor,
                  onTap: () {
                    setState(() {
                      kgButtonColor = kActiveColor;
                      lbButtonColor = kInactiveColor;
                    });
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                ChoosingButton(
                  measureUnit: "Lb",
                  onTap: () {
                    setState(() {
                      kgButtonColor = kInactiveColor;
                      lbButtonColor = kActiveColor;
                    });
                  },
                  color: lbButtonColor,
                )
              ],
            ),
            const SizedBox(
              height: 37,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (val) {
                goalWeight =
                    (double.tryParse(val) != null ? double.tryParse(val) : 0)!;
              },
              decoration: InputDecoration(
                  hintText: 'Enter your goal weight',
                  hintStyle: const TextStyle(
                      color: Colors.grey, fontSize: 18, fontFamily: "Kanit"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.64),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black))),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 213),
                child: GreenButton(
                    text: "Next",
                    onpressed: () async {
                      SharedPrefs.setGoalWeight(kgoalWeghtKey, goalWeight);
                      Navigator.pushNamed(context, GenderPage.id);
                    })),
          ],
        ),
      ),
    );
  }
}
