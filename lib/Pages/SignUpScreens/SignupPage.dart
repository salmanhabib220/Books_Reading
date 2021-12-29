import 'package:books_reading/Pages/Login/Loginpage.dart';
import 'package:books_reading/Pages/SignUpScreens/body.dart';
import 'package:books_reading/components/Already_have_account.dart';
import 'package:books_reading/components/ordivider.dart';
import 'package:books_reading/components/roundedButtons.dart';
import 'package:books_reading/components/roundedTextField.dart';
import 'package:books_reading/components/rounded_passwordField.dart';
import 'package:books_reading/components/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BodySignUp(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Creat an Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                "icons/signup.svg",
                height: size.height * 0.35,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedTextInputField(
                label: "Name",
                hintText: "Enter Your Name",
                onChanged: (value) {},
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
                text: "Creat an Account",
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
                login: false,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

