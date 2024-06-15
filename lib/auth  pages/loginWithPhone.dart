import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:silly/Components/TextWidgets.dart';
import 'package:silly/Components/buttons.dart';
import 'package:silly/Components/loaderOver.dart';
import 'package:silly/Components/sliverappbar.dart';
import 'package:silly/Components/textfield.dart';
import 'package:silly/State%20Management/loaderState.dart';

class LoginWithPhone extends StatelessWidget {
  LoginWithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    void _onLoginPressed() {
      final loaderState = Provider.of<LoaderState>(context, listen: false);
      loaderState.makeLoaderVisible();

      // Navigate to home screen after 5 seconds
      Future.delayed(Duration(seconds: 5), () {
        Navigator.pushReplacementNamed(context, '/homeWidget');
        loaderState.makeLoaderInvisible();
      });
    }

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final loaderState = LoaderState();
    return LoaderOver(
      baseScreen: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            StandardSliverAppBar(title: ''),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    children: [
                      SizedBox(width: screenWidth * 0.08),
                      StandardText(text: 'Phone Number')
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  StandardTextBox(),
                  SizedBox(height: screenHeight * 0.05),
                  Row(
                    children: [
                      SizedBox(width: screenWidth * 0.08),
                      StandardText(text: 'Password'),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  StandardTextBox(),
                  SizedBox(height: screenHeight * 0.05),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: Container(
                      color: Color.fromARGB(255, 46, 46, 46),
                      width: screenWidth,
                      child: Center(
                        child: StandardText(
                          text: 'Use Email instead',
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  StandardButton(
                      buttonHeight: screenHeight * 0.09,
                      buttonText: 'Login',
                      onPressed: _onLoginPressed),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  StandardButton(
                      buttonColor: const Color.fromARGB(221, 27, 27, 27),
                      buttonHeight: screenHeight * 0.09,
                      buttonText: 'Don`t have an account?',
                      onPressed: () {}),
                  SizedBox(width: screenWidth * 0.08),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
