import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:be_better_you/screens/const.dart';

class CustomBNB extends StatelessWidget {
  const CustomBNB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => BNBModel(), child: CustomBNBBody());
  }
}

class CustomBNBBody extends StatefulWidget {
  const CustomBNBBody({Key? key}) : super(key: key);

  @override
  _CustomBNBBodyState createState() => _CustomBNBBodyState();
}

class _CustomBNBBodyState extends State<CustomBNBBody> {
  @override
  Widget build(BuildContext context) {
    int index = context.watch<BNBModel>().position;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 118 / 2,
      decoration: BoxDecoration(
        color: kInactiveBoxColor,
        border: Border.all(),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(26.3),
          topRight: Radius.circular(26.3),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BNBImage(
            index: 0,
            isSelected: index == 0 ? true : false,
            active_path: "images/active_home.png",
            inactive_path: "images/inactive_home.png",
          ),
          BNBImage(
            index: 1,
            isSelected: index == 1 ? true : false,
            active_path: "images/active_dashbord.png",
            inactive_path: "images/inactivedashbord.png",
          ),
          BNBImage(
            index: 2,
            isSelected: index == 2 ? true : false,
            active_path: "images/active_profile.png",
            inactive_path: "images/inactiveprofile.png",
          )
        ],
      ),
    );
  }
}

class BNBImage extends StatefulWidget {
  int index;
  bool isSelected;
  String active_path;
  String inactive_path;
  BNBImage({
    required this.index,
    required this.isSelected,
    required this.active_path,
    required this.inactive_path,
  });

  @override
  State<BNBImage> createState() => _BNBImageState();
}

class _BNBImageState extends State<BNBImage> {
  @override
  Widget build(BuildContext context) {
    var model = context.read<BNBModel>();
    return GestureDetector(
        onTap: () {
          model.setPosition(widget.index);
        },
        child: widget.isSelected == true
            ? ActiveBNBButton(path: widget.active_path)
            : InactiveBNBButton(path: widget.inactive_path));
  }
}

class BNBModel extends ChangeNotifier {
  int _position = 0;
  void setPosition(int index) {
    _position = index;
    notifyListeners();
  }

  int get position => _position;
}

class ActiveBNBButton extends StatelessWidget {
  String path;

  ActiveBNBButton({required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 101,
      height: 50,
      decoration: BoxDecoration(
          color: kgreenButton,
          border: Border.all(),
          borderRadius: BorderRadius.circular(17)),
      child: Center(
        child: Image.asset("$path"),
      ),
    );
  }
}

class InactiveBNBButton extends StatelessWidget {
  String path;

  InactiveBNBButton({required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 101,
      height: 50,
      child: Image.asset("$path"),
    );
  }
}
