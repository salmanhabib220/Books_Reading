import 'package:books_reading/Pages/Login/components/body.dart';
import 'package:books_reading/Pages/SignUpScreens/SignupPage.dart';
import 'package:books_reading/components/Already_have_account.dart';
import 'package:books_reading/components/ordivider.dart';
import 'package:books_reading/components/roundedButtons.dart';
import 'package:books_reading/components/roundedTextField.dart';
import 'package:books_reading/components/rounded_passwordField.dart';
import 'package:books_reading/components/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                "icons/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedTextInputField(
                label: "Email",
                hintText: "Enter Your Email",
                onChanged: (value) {},
              ),
              RoundedPasswordFields(
                Onchanged: (value) {},
              ),
              RoundedButton(
                text: "Login",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Already_have_Account(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }));
                },
              ),
              orDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  social_icons(
                    press: () {},
                    IconSrc: "icons/facebook.svg",
                  ),
                  social_icons(
                    press: () {},
                    IconSrc: "icons/twitter.svg",
                  ),
                  social_icons(
                    press: () {},
                    IconSrc: "icons/google-plus.svg",
                  ),
            ],
          ),
            ],
        ),
      ),
      ),
    );
  }
}
