import 'package:be_better_you/screens/goal_weight.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/current_weight.dart';
import 'screens/goal_weight.dart';
import 'screens/gender_selection.dart';
import 'screens/height_screen.dart';
import 'screens/initial_challenge.dart';
import 'screens/home.dart';
import 'screens/minutes_challenge.dart';

void main() {
  runApp(const FitAppMain());
}

class FitAppMain extends StatelessWidget {
  const FitAppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpPage.id: (context) => const SignUpPage(),
        CurrentWeightScreen.id: (context) => const CurrentWeightScreen(),
        GoalWeightScreen.id: (context) => GoalWeightScreen(),
        GenderPage.id: (context) => const GenderPage(),
        HeightPage.id: (context) => const HeightPage(),
        InitialChallengePage.id: (context) => const InitialChallengePage(),
        HomeScreen.id: (context) => const HomeScreen(),
        MinutesChallengeScreen.id: (context) => const MinutesChallengeScreen(),
      },
    );
  }
}
