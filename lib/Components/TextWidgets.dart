import 'package:flutter/material.dart';

class StandardText extends StatelessWidget {
  String text;
  double? fontSize;
  StandardText({super.key, required this.text, this.fontSize});
  Widget build(BuildContext) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Ubuntu',
            color: Colors.white,
            fontSize: fontSize ?? 20));
  }
}
