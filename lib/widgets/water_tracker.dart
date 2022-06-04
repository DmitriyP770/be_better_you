import 'package:flutter/material.dart';
import 'package:be_better_you/screens/const.dart';
import 'package:provider/provider.dart';

class WaterTrackerWidget extends StatelessWidget {
  const WaterTrackerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WaterTrackerModel(),
        child: WaterTrackerWidgetBody(5));
  }
}

class WaterTrackerWidgetBody extends StatelessWidget {
  int plannedGlasses;

  WaterTrackerWidgetBody(this.plannedGlasses);

  Widget build(BuildContext context) {
    var model = context.watch<WaterTrackerModel>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Water Tracker",
              style: kHeaderTextStyle,
            ),
            Text(
              "${model._drinkedGlasses} / $plannedGlasses",
              style: kHeaderTextStyle,
            ),
          ],
        ),
        SizedBox(
          height: 99,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: WaterFactory.MakeWidget(5)),
        ),
      ],
    );
  }
}

class WaterFactory {
  static List<Widget> MakeWidget(int i) {
    List<Glass> list = <Glass>[];

    for (int a = 1; a <= i; a++) {
      list.add(Glass());
    }
    return list;
  }
}

class Glass extends StatefulWidget {
  const Glass({Key? key}) : super(key: key);

  @override
  _GlassState createState() => _GlassState();
}

class _GlassState extends State<Glass> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    var model = context.read<WaterTrackerModel>();
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(right: 15),
        child: Container(
          height: 99,
          width: 99,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            color: isActive == false ? kInactiveBoxColor : kgreenButton,
            borderRadius: BorderRadius.circular(26.3),
          ),
          child: Image.asset("images/glass.png"),
        ),
      ),
      onTap: () {
        if (isActive == false) {
          isActive = true;
          model.drinkGlass();
          setState(() {});
        } else {
          isActive = false;
          model.undrinkGlass();
          setState(() {});
        }
      },
    );
  }
}

class WaterTrackerModel extends ChangeNotifier {
  int _drinkedGlasses = 0;

  void drinkGlass() {
    _drinkedGlasses++;
    notifyListeners();
  }

  void undrinkGlass() {
    _drinkedGlasses--;
    notifyListeners();
  }
}
