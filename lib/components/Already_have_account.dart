import 'package:books_reading/constants.dart';
import 'package:flutter/material.dart';



class Already_have_Account extends StatelessWidget {
  final bool login;
  final Function()? press;
  const Already_have_Account({
    Key? key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        login ? "Don't have an Account ?" : "Already Have an Account ?",
        style: TextStyle(
          color: kPrimaryColor,
        ),
      ),
      GestureDetector(
        onTap: press,
        child: Text(
          login ? "Sign Up" : "Sign In",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
      )
    ]);
  }
}
