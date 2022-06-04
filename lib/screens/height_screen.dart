import 'package:be_better_you/screens/initial_challenge.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'package:be_better_you/widgets/buttons.dart';
import 'package:be_better_you/widgets/text_widgets.dart';
import 'package:be_better_you/domain/data/user_data.dart';

class HeightPage extends StatefulWidget {
  static String id = "7";

  const HeightPage();

  @override
  _HeightPageState createState() => _HeightPageState();
}

class _HeightPageState extends State<HeightPage> {
  Color cm = kActiveColor;
  Color ft = kInactiveColor;
  double height = 0;
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
                BackGreyButton(),
                const Text(
                  "Q/4",
                  style: const TextStyle(
                      fontSize: 18,
                      fontFamily: "Kanit",
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            HeaderText(
              left: 110,
              top: 35,
              width: 76,
              text: "How Tall Are You",
            ),
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
                  measureUnit: "Cm",
                  color: cm,
                  onTap: () {
                    setState(() {
                      cm = kActiveColor;
                      ft = kInactiveColor;
                    });
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                ChoosingButton(
                  measureUnit: "Ft/In",
                  onTap: () {
                    setState(() {
                      cm = kInactiveColor;
                      ft = kActiveColor;
                    });
                  },
                  color: ft,
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
                height = (double.tryParse(val.trim()) == null
                    ? 0
                    : double.tryParse(val.trim()))!;
              },
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
                      SharedPrefs.setHeight(kUserHeight, height);
                      Navigator.pushNamed(context, InitialChallengePage.id);
                    })),
          ],
        ),
      ),
    );
  }
}
