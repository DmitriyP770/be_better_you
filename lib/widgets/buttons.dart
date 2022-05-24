import 'package:flutter/material.dart';
import 'package:be_better_you/screens/const.dart';

class GreenButton extends StatelessWidget {
  final String text;
  VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 364,
      height: 64,
      child: ElevatedButton(
        child: Text(
          "$text",
          style: const TextStyle(
              fontFamily: "Kanit", color: Colors.black, fontSize: 18),
        ),
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
          primary: kgreenButton,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }

  GreenButton({required this.text, required this.onpressed});
}

class SignInWith_Button extends StatelessWidget {
  late String buttonText;
  late Color color;

  SignInWith_Button(this.buttonText, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
      child: Container(
        height: 64,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.64))),
            onPressed: () {},
            child: Text(
              "$buttonText",
              style: const TextStyle(
                fontFamily: "Kanit",
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
            )),
      ),
    );
  }
}

class YellowButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  double? width = 364;
  YellowButton({required this.text, required this.onPressed, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 64,
      child: ElevatedButton(
        child: Text(
          "$text",
          style: const TextStyle(
              fontFamily: "Kanit", color: Colors.black, fontSize: 18),
        ),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFFF4DB71),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }
}

class ChoosingButton extends StatelessWidget {
  late String measureUnit;
  late VoidCallback? onTap;
  late Color? color;
  ChoosingButton({
    required this.measureUnit,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 40,
        width: 55,
        decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10.4)),
        child: Center(
          child: Text(
            measureUnit,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: "Kanit",
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}

class BackGreyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}

class EditGreyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          'Edit',
          style: TextStyle(
            fontSize: 18,
            fontFamily: "Kanit",
            fontWeight: FontWeight.w400,
          ),
        )),
      ),
    );
  }
}

class ExerciseScreenButton extends StatelessWidget {
  final String buttonText;
  VoidCallback onTap;
  ExerciseScreenButton(
      {Key? key, required this.buttonText, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 174,
        height: 64,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(16.64),
            color: const Color(0xFFEDEEED)),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: "Kanit",
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
