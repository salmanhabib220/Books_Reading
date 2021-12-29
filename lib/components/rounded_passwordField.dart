import 'package:books_reading/components/textfield_container.dart';
import 'package:books_reading/constants.dart';
import 'package:flutter/material.dart';


class RoundedPasswordFields extends StatelessWidget {
  final ValueChanged<String> Onchanged;
  const RoundedPasswordFields({
    Key? key,
    required this.Onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(
        child: TextFormField(
      onChanged: Onchanged,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(Icons.lock, color: kPrimaryColor),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          focusColor: kPrimaryColor,
          ),
    ));
  }
}
