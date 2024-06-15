import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:silly/Components/buttons.dart';

class FullScreenMovieView extends StatelessWidget {
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: screenHeight * 0.5,
                  width: screenWidth * 0.96,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 10),
                      ],
                      gradient: LinearGradient(colors: [
                        const Color.fromARGB(255, 34, 34, 34),
                        Color.fromARGB(255, 66, 65, 65)
                      ])),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.06),
              child: SizedBox(
                height: screenHeight * 0.09,
                width: screenWidth * 0.9,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Watch',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 115, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 20,
                )
              ]),
              height: screenHeight * 0.09,
              width: screenWidth * 0.9,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Trailer',
                  style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
