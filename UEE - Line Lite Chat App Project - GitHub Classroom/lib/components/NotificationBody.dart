import 'package:Line_Lite/SizeConfig.dart';
import 'package:Line_Lite/models/Notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'NotificationCard.dart';

class NotificationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoNotification.length,
        itemBuilder: (context,index)=> Padding(
            padding:EdgeInsets.symmetric(vertical: 10),
          child:  Dismissible(
            key: Key(demoNotification[0].notifiMessage.id.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/images/delete.svg"),
                ],
              ),
            ),
            child: NotificationCard(
              notifications: demoNotification[index],
            ),
          ),
        ),

      ),

    );

  }
}

