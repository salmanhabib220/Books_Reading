import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key? key, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "images/main_top.png",
                width: size.width * 0.35,
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "images/login_bottom.png",
                width: size.width * 0.4,
              )),
              child,
        ],
      ),
    );
  }
}
