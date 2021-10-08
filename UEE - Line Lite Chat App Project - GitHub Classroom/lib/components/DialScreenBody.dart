import 'package:Line_Lite/SizeConfig.dart';
import 'package:Line_Lite/components/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'DialButton.dart';
import 'DialUserPic.dart';

class DialScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Padding(
          padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Jenny Russel",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white),
            ),
            Text(
              "Calling...",
              style: TextStyle(color: Colors.white60),
            ),
            VerticalSpacing(),
            DialUserPic(
              image: "assets/images/girl.jpg",
            ),
            Spacer(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                DialButton(
                  press: (){},
                  iconSrc:"assets/images/mic.svg" ,
                  text: "Audio",
                ),
                DialButton(
                  press: (){},
                  iconSrc:"assets/images/volume.svg" ,
                  text: "Microphone",
                ),
                DialButton(
                  press: (){},
                  iconSrc:"assets/images/video.svg" ,
                  text: "Video",
                ),
                DialButton(
                  press: (){},
                  iconSrc:"assets/images/msg.svg" ,
                  text: "Message",
                ),
                DialButton(
                  press: (){},
                  iconSrc:"assets/images/user.svg" ,
                  text: "Add Contacts",
                ),
                DialButton(
                  press: (){},
                  iconSrc:"assets/images/mail.svg" ,
                  text: "Audio",
                ),
              ],
            ),
            VerticalSpacing(),
            RoundedButton(
              iconSrc: "assets/images/decline.svg",
              color: Colors.red,
              iconColor: Colors.white,
              press: (){},
            ),

          ],
        ),
      )

    );
  }
}

