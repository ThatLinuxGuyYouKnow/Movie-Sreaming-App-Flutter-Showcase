import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:silly/State%20Management/loaderState.dart';
import 'package:silly/auth%20%20pages/login.dart';
import 'package:silly/auth%20%20pages/loginWithPhone.dart';
import 'package:silly/auth%20%20pages/signup.dart';
import 'package:silly/auth%20%20pages/signupWithPhone.dart';
import 'package:silly/fullScreenMovieView.dart';
import 'package:silly/homeScreen.dart';
import 'package:silly/welcomeScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LoaderState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final bool userIsLoggedIn = true; // Marked as final

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 238, 229, 226)),
        useMaterial3: true,
      ),
      initialRoute: userIsLoggedIn ? '/' : '/home',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginWithEmail(),
        '/signup': (context) => SignUpScreen(),
        '/loginWithPhone': (context) => LoginWithPhone(),
        '/signupWithPhone': (context) => signupWithPhone(),
        '/homeWidget': (context) => HomeScreen(),
        '/movie-fullview': (context) => FullScreenMovieView()
      },
    );
  }
}
