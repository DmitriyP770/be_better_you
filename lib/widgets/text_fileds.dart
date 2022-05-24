import 'package:flutter/material.dart';

class TextFieldsWidget extends StatelessWidget {
  final String message;
  final bool isobscuretext;
  TextFieldsWidget(this.message, this.isobscuretext);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isobscuretext,
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "$message",
          hintStyle: TextStyle(color: Colors.blueGrey),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.64),
              borderSide:
                  BorderSide(style: BorderStyle.solid, color: Colors.black))),
    );
  }
}
