import 'package:flutter/material.dart';
import 'package:silly/Components/TextWidgets.dart';

class ShowsGrid extends StatelessWidget {
  final bool notationTextVisible;
  final String headerText;
  ShowsGrid(
      {super.key, this.notationTextVisible = false, required this.headerText});
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    Widget inBetweenBoxSpacer = SizedBox(
      width: screenWidth * 0.05,
    );
    return SingleChildScrollView(
      child: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
          child: Column(children: [
            Row(
              children: [
                SizedBox(
                  width: screenWidth * .04,
                ),
                StandardText(
                  text: headerText,
                  fontSize: 22,
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(bottom: screenHeight * 0.03),
                child: notationTextVisible
                    ? Row(
                        children: [
                          SizedBox(
                            width: screenWidth * 0.04,
                          ),
                          GridText(
                            gridText: 'New',
                            gridFontSize: 20,
                          )
                        ],
                      )
                    : SizedBox.shrink()), //Row 1 handles just the new text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * .04),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GridContentBoxes(),
                    inBetweenBoxSpacer,
                    GridContentBoxes(),
                    inBetweenBoxSpacer,
                    GridContentBoxes()
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
                padding: EdgeInsets.only(bottom: screenHeight * 0.02),
                child: notationTextVisible
                    ? Row(
                        children: [
                          SizedBox(
                            width: screenWidth * 0.04,
                          ),
                          GridText(
                            gridText: 'Hot',
                            gridFontSize: 20,
                          )
                        ],
                      )
                    : SizedBox.shrink()), //Row 1 handles just the new text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * .04),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GridContentBoxes(),
                    inBetweenBoxSpacer,
                    GridContentBoxes(),
                    inBetweenBoxSpacer,
                    GridContentBoxes()
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
                padding: EdgeInsets.only(bottom: screenHeight * 0.02),
                child: notationTextVisible
                    ? Row(
                        children: [
                          SizedBox(
                            width: screenWidth * 0.04,
                          ),
                          GridText(
                            gridText: 'Hot',
                            gridFontSize: 20,
                          )
                        ],
                      )
                    : SizedBox.shrink()), //Row 1 handles just the new text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * .04),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GridContentBoxes(),
                    inBetweenBoxSpacer,
                    GridContentBoxes(),
                    inBetweenBoxSpacer,
                    GridContentBoxes()
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class GridText extends StatelessWidget {
  String gridText;
  double gridFontSize;
  GridText({super.key, required this.gridText, this.gridFontSize = 18});
  Widget build(BuildContext context) {
    return Text(
      gridText,
      style: TextStyle(
          fontFamily: 'Ubuntu', fontSize: gridFontSize, color: Colors.white),
    );
  }
}

class GridContentBoxes extends StatelessWidget {
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/movie-fullview');
      },
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                  )
                ],
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  const Color.fromARGB(255, 46, 45, 45),
                  const Color.fromARGB(255, 161, 160, 160)
                ])),
            height: screenHeight * 0.24,
            width: screenWidth * 0.4,
            child: Column(),
          ),
          GridText(gridText: 'Movie name')
        ],
      ),
    );
  }
}
