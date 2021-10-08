import 'package:Line_Lite/components/NotificationBody.dart';
import 'package:Line_Lite/models/Notifications.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context),
      body: NotificationBody(),
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Notifications",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoNotification.length} notifications",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
