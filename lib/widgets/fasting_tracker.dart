import 'package:flutter/material.dart';
import 'package:be_better_you/screens/const.dart';
import 'buttons.dart';
import 'package:provider/provider.dart';
import 'package:be_better_you/domain/entity/fasting_tracker.dart';

class FastingTracker extends StatelessWidget {
  const FastingTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FastTrackerModel(), child: FastingTrackerBody());
  }
}

class FastingTrackerBody extends StatelessWidget {
  const FastingTrackerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = context.watch<FastTrackerModel>();
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Fast Tracker",
        style: kHeaderTextStyle,
      ),
      SizedBox(height: 20),
      Column(children: [
        Container(
          width: 364,
          height: 191,
          child: model.isRunning == true
              ? Column(
                  children: [
                    Text(
                        "${model.currentHours}:${model.currentMin}:${model.currentSeconds}"),
                    Text(
                        "${model.remainingHours}:${model.remainingMinutes}:${model.remainingSeconds}")
                  ],
                )
              : SizedBox(
                  width: 0,
                  height: 0,
                ),
          decoration: BoxDecoration(
            color: kgreenButton,
            border: Border.all(),
            borderRadius: BorderRadius.circular(26.3),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.all(25),
          child: model.isRunning == false
              ? YellowButton(
                  text: "Start Fasting Now",
                  onPressed: () {
                    model.ToggleRun();

                    model.Run(2, 0, 0);
                  },
                  width: 314,
                )
              : YellowButton(
                  text: "Stop Fasting",
                  onPressed: () {
                    model.ToggleRun();
                    model.Reset();
                  }),
        ),
      ]),
    ]);
  }
}
