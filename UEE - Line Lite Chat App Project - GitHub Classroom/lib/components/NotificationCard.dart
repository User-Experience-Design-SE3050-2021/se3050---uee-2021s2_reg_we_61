import 'package:Line_Lite/models/Notifications.dart';
import 'package:flutter/material.dart';

import '../SizeConfig.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key key,
    @required this.notifications,
  }) : super(key: key);

  final Notifications notifications;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(notifications.notifiMessage.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(notifications.notifiMessage.name,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(text: "\$${notifications.notifiMessage.message}\n",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [TextSpan(text: "${notifications.noOfMessage}",
                    style: TextStyle(color: Colors.blueAccent)
                ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
