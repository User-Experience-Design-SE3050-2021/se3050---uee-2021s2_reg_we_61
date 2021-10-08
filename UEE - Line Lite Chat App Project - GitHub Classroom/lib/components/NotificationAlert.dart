import 'package:flutter/material.dart';

class NotificationAlert extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        title:Row(
          children:[
            CircleAvatar(backgroundImage:AssetImage("assets/images/jacob.jpeg"),
            ),
            SizedBox(
              width: 40.0 * 0.75,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Line Lite",
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  "Jacob",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                    "see you tomorrow",
                  style: TextStyle(fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

