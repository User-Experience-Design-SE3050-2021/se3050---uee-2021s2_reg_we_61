import 'package:Line_Lite/models/ChatMessage.dart';
import 'package:flutter/material.dart';

import 'AudioMessage.dart';
import 'TextMessage.dart';
import 'VideoMessage.dart';

class Message extends StatelessWidget {
  const Message({
    Key key,
    @required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContain(ChatMessage message){
      switch(message.messageType){
        case ChatMessageType.text:
          return TextMessage(message: message);
          break;
        case ChatMessageType.audio:
          return AudioMessage(message: message);
          break;
        case ChatMessageType.video:
          return VideoMessage();
          break;
        default:
          return SizedBox();
      }

    }
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment:
        message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if(!message.isSender) ...[
            CircleAvatar(radius: 12,backgroundImage: AssetImage("assets/images/jenny.jpg"),
            ),
            SizedBox(width: 20.0/2),
          ],
          messageContain(message),
          if(message.isSender) MessageStatusDot(status: message.messageStatus)
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus status;

  const MessageStatusDot({Key key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status){
      switch(status){
        case MessageStatus.not_sent:
          return Color(0xFFF03738);
          break;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1.color.withOpacity(0.1);
          break;
        case MessageStatus.viewed:
          return Colors.blue;
          break;
        default:
          return Colors.transparent;
      }
    }
    return Container(
      margin: EdgeInsets.only(left: 20.0/2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
          color:dotColor(status),
          shape: BoxShape.circle,
      ),
      child: Icon(
          status == MessageStatus.not_sent ? Icons.close : Icons.done,
          size: 8,
          color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
