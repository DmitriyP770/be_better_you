import 'package:be_better_you/screens/const.dart';
import 'package:flutter/material.dart';
import 'package:be_better_you/widgets/buttons.dart';
import 'package:provider/provider.dart';
import 'package:be_better_you/widgets/buttons.dart';
import 'video_screen.dart';

class MinutesChallengeScreen extends StatelessWidget {
  const MinutesChallengeScreen({Key? key}) : super(key: key);
  static String id = "10";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BackGreyButton(),
                  Text(
                    "4 Minutes Plank",
                    style: kHeaderTextStyle,
                  ),
                  EditGreyButton(),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ExerciseTimer(2),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ExerciseScreenVideoButton(
                    buttonText: "Watch Video",
                    videoURL: plankVideoID,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  ExerciseScreenTextButton(
                    textSource: kPlankText,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TimerModel extends ChangeNotifier {
  int minutes;
  int seconds = 0;
  TimerModel({required this.minutes});

  void Run() async {
    for (int i = minutes; i > 0; i--) {
      for (int n = 59; n > -1; n--) {
        await Future.delayed(const Duration(seconds: 1));
        seconds = n;
        notifyListeners();
      }
      minutes--;
      notifyListeners();
    }
  }
}

class ExerciseTimer extends StatelessWidget {
  final int minutes;

  ExerciseTimer(this.minutes);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TimerModel(minutes: minutes),
      child: ExecrciseTimerBody(),
    );
  }
}

class ExecrciseTimerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var model = context.watch<TimerModel>();
    return Stack(
      children: [
        Center(
          child: Container(
            width: 297,
            height: 265,
            decoration: BoxDecoration(
                color: kGreyContainerColor,
                border: Border.all(),
                borderRadius: BorderRadius.circular(68.9)),
          ),
        ),
        Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 27, bottom: 27),
            child: Container(
              width: 237.6,
              height: 212,
              decoration: BoxDecoration(
                color: kActiveColor,
                borderRadius: BorderRadius.circular(55),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 94, right: 94, top: 185, bottom: 10),
                child: Text(
                  model.seconds.toString().length < 2
                      ? "${model.minutes} : 0${model.seconds}"
                      : "${model.minutes} : ${model.seconds}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 80, right: 80, top: 70, bottom: 70),
            child: GestureDetector(
              child: Container(
                width: 138,
                height: 123,
                decoration: BoxDecoration(
                    color: kgreenButton,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(32)),
                child: const Center(
                  child: Text(
                    "Start",
                    style: TextStyle(
                        fontFamily: "Kanit",
                        fontWeight: FontWeight.w400,
                        fontSize: 36),
                  ),
                ),
              ),
              onTap: () {
                model.Run();
              },
            ),
          ),
        )
      ],
    );
  }
}
