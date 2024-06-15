import 'package:flutter/material.dart';

class LoaderModal extends StatelessWidget {
  LoaderModal({super.key});
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.1,
      width: screenWidth * 0.2,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black87,
          offset: Offset(5.0, 5.0),
          blurRadius: 15.0,
          spreadRadius: 1.0,
        )
      ], color: Colors.black, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.02),
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
