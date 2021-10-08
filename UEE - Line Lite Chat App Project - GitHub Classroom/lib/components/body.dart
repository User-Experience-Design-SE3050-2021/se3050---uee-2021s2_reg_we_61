import 'package:Line_Lite/models/ChatMessage.dart';
import 'package:flutter/material.dart';

import 'Message.dart';
import 'TextMessage.dart';
import 'chat_input_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
           child: ListView.builder(
            itemCount: demeChatMessages.length,
            itemBuilder: (context,index)=>
              Message(message:demeChatMessages[index] ,),
        ),
    ),
        ),
        ChatInputField(),

      ],
    );
  }
}



