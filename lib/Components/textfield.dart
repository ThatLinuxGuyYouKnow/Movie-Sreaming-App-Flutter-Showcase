import 'package:flutter/material.dart';

class StandardTextBox extends StatelessWidget {
  final double? boxWidth;
  final double? boxHeight;
  final Widget? prefixIcon;

  StandardTextBox({
    super.key,
    this.boxWidth,
    this.boxHeight,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(221, 43, 42, 42),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      width: boxWidth ?? screenWidth * 0.9,
      height: boxHeight ?? screenHeight * 0.08,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: TextField(
          style:
              const TextStyle(color: Colors.white), // Set text color to white
          decoration: InputDecoration(
            border: InputBorder.none, // Remove the underline
            prefixIcon: prefixIcon, // Optional prefix icon
            hintStyle: const TextStyle(
                color: Colors.grey), // Set hint text color if needed
          ),
        ),
      ),
    );
  }
}
