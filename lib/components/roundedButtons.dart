import 'package:books_reading/constants.dart';
import 'package:flutter/material.dart';



class RoundedButton extends StatelessWidget {
  final String text;
  final Function()? press;
  final Color color, textcolor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textcolor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
          ),
          child: Text(text,
            style: TextStyle(fontWeight: FontWeight.bold, color: textcolor)),
            onPressed: press,
        ),
      ),
    );
  }
}
