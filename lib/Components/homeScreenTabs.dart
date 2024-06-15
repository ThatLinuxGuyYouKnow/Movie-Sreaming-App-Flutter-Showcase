import 'package:flutter/material.dart';

class TabStyleButton extends StatelessWidget {
  String tabText;
  TabStyleButton({super.key, required this.tabText});
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.06,
      width: screenWidth * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color.fromARGB(255, 255, 115, 0))),
      child: Center(
          child: Text(tabText,
              style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20))),
    );
  }
}
