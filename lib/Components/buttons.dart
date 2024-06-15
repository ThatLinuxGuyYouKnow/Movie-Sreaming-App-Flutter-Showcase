import 'package:flutter/material.dart';
import 'package:silly/Components/TextWidgets.dart';

class StandardButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final VoidCallback onPressed;
  double? buttonWidth;
  double? buttonHeight;
  StandardButton(
      {super.key,
      required this.buttonText,
      this.buttonColor = const Color.fromARGB(255, 255, 115, 0),
      required this.onPressed,
      this.buttonWidth,
      this.buttonHeight});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: buttonWidth ?? screenWidth * 0.8,
      height: buttonHeight ?? screenHeight * 0.082,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
