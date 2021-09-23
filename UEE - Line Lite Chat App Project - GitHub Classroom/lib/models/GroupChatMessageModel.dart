import 'package:flutter/cupertino.dart';

class GroupChatMessage{
  String messageContent;
  String messageType;
  GroupChatMessage({@required this.messageContent, @required this.messageType});
}

List<GroupChatMessage> messages = [
  GroupChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
  GroupChatMessage(messageContent: "How have you been?", messageType: "receiver"),
  GroupChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
  GroupChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
  GroupChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
];
