import 'package:flutter/material.dart';
import 'package:silly/Components/textfield.dart';

class SearchScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.09),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StandardTextBox(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.orange,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
