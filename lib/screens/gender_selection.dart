import 'package:be_better_you/screens/height_screen.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'package:be_better_you/widgets/buttons.dart';
import 'package:be_better_you/domain/data/user_data.dart';
import 'package:be_better_you/domain/entity/user.dart';

class GenderPage extends StatefulWidget {
  static String id = "6";
  const GenderPage({Key? key}) : super(key: key);

  @override
  _GenderPageState createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  Color maleColor = kActiveColor;
  Color femColor = kInactiveColor;
  late String gender;

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
                  "Q/3",
                  style: const TextStyle(
                      fontSize: 18,
                      fontFamily: "Kanit",
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Stack(children: [
              Positioned(
                left: 5,
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
                "What’s Your Gender?",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Kanit",
                  fontSize: 46,
                ),
              ),
            ]),
            Text(
              "So that We can determine the exercises specially for you.",
              style: kregularTextStyle,
            ),
            const SizedBox(
              height: 43,
            ),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  maleColor = kActiveColor;
                  femColor = kInactiveColor;
                  gender = "Male";
                });
              },
              child: Container(
                width: 364,
                height: 64,
                child: const Center(
                    child: Text(
                  "Male",
                  style: TextStyle(fontFamily: "Kanit", fontSize: 18),
                )),
                decoration: BoxDecoration(
                  color: maleColor,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(16.64),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  maleColor = kInactiveColor;
                  femColor = kActiveColor;
                  gender = "Female";
                });
              },
              child: Container(
                width: 364,
                height: 64,
                child: const Center(
                    child: Text(
                  "Female",
                  style: const TextStyle(fontFamily: "Kanit", fontSize: 18),
                )),
                decoration: BoxDecoration(
                  color: femColor,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(16.64),
                ),
              ),
            ),
            const SizedBox(
              height: 37,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 170),
                child: GreenButton(
                    text: "Next",
                    onpressed: () async {
                      SharedPrefs.setGender(kUserGender, gender);
                      Navigator.pushNamed(context, HeightPage.id);
                    })),
          ],
        ),
      ),
    );
  }
}
