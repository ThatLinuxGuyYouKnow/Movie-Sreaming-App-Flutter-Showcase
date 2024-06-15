import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:silly/Components/TextWidgets.dart';

class Downloads extends StatelessWidget {
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.1),
          Container(
            height: screenHeight * .07,
            color: Colors.orange.withOpacity(0.5),
            child: Row(
              children: [
                SizedBox(width: screenWidth * 0.06),
                const Icon(
                  color: Colors.orange,
                  size: 20,
                  Icons.download,
                ),
                SizedBox(
                  width: screenWidth * 0.09,
                ),
                StandardText(
                  text: 'No Downloads Yet',
                  fontSize: 13,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
