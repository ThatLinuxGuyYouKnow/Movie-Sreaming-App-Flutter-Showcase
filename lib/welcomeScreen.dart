import 'package:flutter/material.dart';
import 'package:silly/Components/buttons.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: const Color.fromARGB(255, 36, 34, 34),
      child: Stack(
        children: [
          SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      height: screenHeight * 0.6,
                      width: screenWidth * 0.9,
                      child: const Image(
                        image: AssetImage('assets/images/hero-bg.png'),
                        fit: BoxFit.fill,
                      )),
                ],
              )
            ],
          )),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.45,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black
                            .withOpacity(0.1), // Slightly transparent black
                        Colors.black.withOpacity(0.3), // Opaque black
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      )
                    ],
                  ),
                  height: screenHeight * 0.25,
                  width: screenWidth,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.05),
                        child: Text('Silly',
                            style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 35,
                                color: Colors.white)),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.07),
                        child: Text(
                          'Stream your favourite series and dramas, for a basic subscription',
                          style: TextStyle(
                              fontFamily: 'Ubuntu', color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    boxShadow: [],
                  ),
                  height: screenHeight * 0.3,
                  width: screenWidth,
                  child: Column(
                    children: [
                      StandardButton(
                        buttonText: 'Create Account',
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors
                              .transparent, // Make the background transparent
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(5.0, 5.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                            )
                          ],
                        ),
                        child: StandardButton(
                          buttonColor: Colors.black,
                          buttonText: 'Login',
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
