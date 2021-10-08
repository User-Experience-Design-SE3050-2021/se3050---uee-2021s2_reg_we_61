import 'package:flutter/material.dart';
import 'package:Line_Lite/models/NotifiMessage.dart';

class Notifications {
 final NotifiMessage notifiMessage;
 final int noOfMessage;

  Notifications({@required this.notifiMessage,@required this.noOfMessage});
}

List<Notifications> demoNotification = [
  Notifications(notifiMessage: demoMessage[0], noOfMessage: 2),
  Notifications(notifiMessage: demoMessage[1], noOfMessage: 1),
  Notifications(notifiMessage: demoMessage[2], noOfMessage: 1),
];