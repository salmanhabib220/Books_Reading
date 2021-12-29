import 'package:books_reading/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class social_icons extends StatelessWidget {
  final String IconSrc;
  final Function()? press;
  const social_icons({
    Key? key,
    required this.IconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kprimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(IconSrc),
        height: 20,
        width: 20,
      ),
    );
  }
}
