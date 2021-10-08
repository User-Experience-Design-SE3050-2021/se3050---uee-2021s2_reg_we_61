import 'package:Line_Lite/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'RoundedButton.dart';

class AudioCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit:StackFit.expand,
      children: [
        Image.asset(
          "assets/images/girl.jpg",
          fit: BoxFit.cover,
        ),
        DecoratedBox(
            decoration: BoxDecoration(
                color:Colors.black.withOpacity(0.3)
            ),
        ),
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: SafeArea(
               child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                     "Jenny \nRussel",
                     style: Theme.of(context)
                     .textTheme
                     .headline3
                     .copyWith(color: Colors.white),
                   ),
                     VerticalSpacing(of: 10),
                     Text(
                         "Calling 0.01".toUpperCase(),
                       style: TextStyle(
                           color: Colors.white60),
                     ),
                     Spacer(),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         RoundedButton(
                           press: () {},
                           color: Colors.white,
                           iconColor: Colors.black,
                           iconSrc: "assets/images/mic.svg",
                         ),
                         RoundedButton(
                           press: () {},
                           color: Colors.white,
                           iconColor: Color(0xFFFF1E46),
                           iconSrc: "assets/images/decline.svg",
                         ),
                         RoundedButton(
                           press: () {},
                           color: Colors.white,
                           iconColor: Colors.black,
                           iconSrc: "assets/images/volume.svg",
                         ),
                       ],
                     ),
                  ],
               ),
            ),
        ),
      ],
    );
  }
}

