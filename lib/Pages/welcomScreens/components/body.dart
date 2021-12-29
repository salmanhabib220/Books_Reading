import 'package:books_reading/Pages/Login/Loginpage.dart';
import 'package:books_reading/Pages/SignUpScreens/SignupPage.dart';
import 'package:books_reading/Pages/welcomScreens/components/background.dart';
import 'package:books_reading/components/roundedButtons.dart';
import 'package:books_reading/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to OLBR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "Sign In",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            RoundedButton(
              text: "Sign Up",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              color: kprimaryLightColor,
              textcolor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
