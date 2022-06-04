import 'package:be_better_you/screens/minutes_challenge.dart';
import 'package:be_better_you/widgets/bottom_nav_bar.dart';
import 'package:be_better_you/widgets/fasting_tracker.dart';
import 'package:be_better_you/widgets/water_tracker.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'package:be_better_you/widgets/challenge_class.dart';

class HomeScreen extends StatelessWidget {
  static String id = '9';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Text(
                "Today’s Challenge",
                style: TextStyle(fontFamily: "Kanit", fontSize: 36),
              ),
              const SizedBox(width: 20),
              ChallengeWidget(20, ChallengeType.PushUp),
              const SizedBox(height: 15),
              ChallengeWidget(30, ChallengeType.Crunch),
              const SizedBox(height: 15),
              ChallengeWidget(10, ChallengeType.Run),
              const SizedBox(height: 20),
              const WaterTrackerWidget(),
              const FastingTracker(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBNB(),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
