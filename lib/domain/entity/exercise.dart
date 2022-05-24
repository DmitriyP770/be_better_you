import 'package:be_better_you/widgets/challenge_class.dart';

enum ChallengeType { Plank, PushUp, Squat, Run, Crunch }

abstract class Exercise {
  late ChallengeType type;
  late int plannedReps;
  late int factReps;
  late int durationInDays;
  late String measureUnit;

  void setFactReps(int reps) {
    factReps = reps;
  }
}

class PlankExercise extends Exercise {
  PlankExercise(int plannedReps, duration) {
    super.plannedReps = plannedReps;
    super.durationInDays = duration;
    super.type = ChallengeType.Plank;
    super.measureUnit = "minutes";
  }
}

class PushUpExercise extends Exercise {
  PushUpExercise(int plannedReps, duration) {
    super.plannedReps = plannedReps;
    super.durationInDays = duration;
    super.type = ChallengeType.PushUp;
    super.measureUnit = "Push Up's";
  }
}

class RunExercise extends Exercise {
  RunExercise(int plannedReps, duration) {
    super.plannedReps = plannedReps;
    super.durationInDays = duration;
    super.type = ChallengeType.Run;
    super.measureUnit = "minutes";
  }
}

class CrunchExercise extends Exercise {
  CrunchExercise(int plannedReps, duration) {
    super.plannedReps = plannedReps;
    super.durationInDays = duration;
    super.type = ChallengeType.Crunch;
    super.measureUnit = "Crunches";
  }
}
