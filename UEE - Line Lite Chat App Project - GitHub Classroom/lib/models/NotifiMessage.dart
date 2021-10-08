import 'package:flutter/material.dart';

class NotifiMessage {
  final int id;
  final String name,message;
  final List<String> images;


  NotifiMessage({
     this.id,
     this.name,
     this.message,
     this.images,
});
}

List<NotifiMessage> demoMessage = [
  NotifiMessage(
    id: 1,
    name: "Jacob",
    message: "Let's meet up tomorrow",
    images:[
      "assets/images/jacob.jpeg"
    ],
  ),
  NotifiMessage(
    id: 2,
    name: "Lavanya",
    message: "Let's meet up tomorrow",
    images:[
      "assets/images/girl2.jpg"
    ],
  ),
  NotifiMessage(
    id: 3,
    name: "Merry",
    message: "Let's meet up tomorrow",
    images:[
      "assets/images/girl.jpg"
    ],
  ),
];

