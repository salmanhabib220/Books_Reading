import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:books_reading/Pages/welcomScreens/welcomeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.asset("images/Splash Books Image.png"),
        nextScreen: WelcomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
        backgroundColor: Colors.white10,
        ),
    );
  }
}
