import 'package:flutter/material.dart';
import 'package:Line_Lite/SizeConfig.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key, this.text, this.image,
  }) : super(key: key);
  final String text,image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Spacer(),
        Text(
          "LINE LITE",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: Color(0xFF091C40),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign:TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
