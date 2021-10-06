import 'package:flutter/material.dart';
import '../models/ChatUsersModel.dart';
import '../widgets/ConversationList.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/woman 2.jpg",
        time: "Now"),
    ChatUsers(name: "Jorge Henry",
        messageText: "That's Great",
        imageURL: "assets/images/man 1.jpg",
        time: "Yesterday"),
    ChatUsers(name: "Philip Fox",
        messageText: "Hey where are you?",
        imageURL: "assets/images/man 2.jpg",
        time: "31 Mar"),
    ChatUsers(name: "Kate Hawkins",
        messageText: "Busy! Call me in 20 mins",
        imageURL: "assets/images/woman 1.jpg",
        time: "28 Mar"),
    ChatUsers(name: "Andrey Jones",
        messageText: "Thank you, It's awesome",
        imageURL: "assets/images/man 3.jpg",
        time: "23 Mar"),
    ChatUsers(name: "Emma Smith",
        messageText: "will update you in evening",
        imageURL: "assets/images/woman 3.jpg",
        time: "17 Mar"),
    ChatUsers(name: "Kristen Stewart",
        messageText: "Can you please share the file?",
        imageURL: "assets/images/woman 4.jpg",
        time: "24 Feb"),
    ChatUsers(name: "John Wick",
        messageText: "How are you?",
        imageURL: "assets/images/man 4.jpg",
        time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Conversations",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white70,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.black54,size: 20,),
                          SizedBox(width: 2,),
                          Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}