import 'package:be_better_you/screens/goal_weight.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'package:be_better_you/widgets/buttons.dart';
import 'package:be_better_you/domain/entity/user.dart';
import 'package:be_better_you/domain/data/user_data.dart';

class CurrentWeightScreen extends StatefulWidget {
  static String id = '4';
  const CurrentWeightScreen({Key? key}) : super(key: key);

  @override
  _CurrentWeightScreenState createState() => _CurrentWeightScreenState();
}

class _CurrentWeightScreenState extends State<CurrentWeightScreen> {
  Color kgButtonColor = kActiveColor;
  Color lbButtonColor = kInactiveColor;
  double currentWeight = 0;

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
                Container(
                  width: 195,
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
                    'Welcome',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Kanit",
                      fontWeight: FontWeight.w400,
                    ),
                  )),
                ),
                const Text(
                  "Q/1",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Kanit",
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Stack(children: [
              Positioned(
                left: 165,
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
                "What’s Your Current Weight?",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Kanit",
                  fontSize: 46,
                ),
              ),
            ]),
            Text(
              "It”s okay no worries.we will fix it together later.",
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
              onChanged: (val) {
                currentWeight =
                    (double.tryParse(val) != null ? double.tryParse(val) : 0)!;
              },
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter your current weight',
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
                      SharedPrefs.setCurrentWeight(
                          kcurrentWeghtKey, currentWeight);
                      Navigator.pushNamed(context, GoalWeightScreen.id);
                    })),
          ],
        ),
      ),
    );
  }
}
