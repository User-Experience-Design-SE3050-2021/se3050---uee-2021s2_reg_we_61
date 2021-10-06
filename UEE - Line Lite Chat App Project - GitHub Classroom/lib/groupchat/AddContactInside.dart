import 'package:Line_Lite/groupchat/AddContact.dart';
import 'package:Line_Lite/screens/groupCall/group_call_screen.dart';

import '/widgets/GroupConversationList.dart';
import 'package:flutter/material.dart';
import '../models/ChatUsersModel.dart';

class AddContactInside extends StatefulWidget {
  @override
  _AddContactInsideState createState() => _AddContactInsideState();
}

class _AddContactInsideState extends State<AddContactInside> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Market Yard",
        messageText: "Awesome Setup",
        imageURL: "assets/images/Market Yard.jpg",
        time: ""),
    ChatUsers(name: "Gossip News",
        messageText: "That's Great",
        imageURL: "assets/images/Gossip News.jpg",
        time: ""),
    ChatUsers(name: "My Family",
        messageText: "Hey where are you?",
        imageURL: "assets/images/My Family.png",
        time: ""),
    ChatUsers(name: "Funny Folk",
        messageText: "Let get a group call me in 20 mins",
        imageURL: "assets/images/Funny Folk.jpg",
        time: ""),
    ChatUsers(name: "Pen Pals",
        messageText: "Thank you, It's awesome",
        imageURL: "assets/images/Pen Pals.jpg",
        time: ""),
    ChatUsers(name: "Girls on Fire",
        messageText: "Will update everyone in evening",
        imageURL: "assets/images/Girls on Fire.jpg",
        time: ""),
    ChatUsers(name: "Backstreet Girls",
        messageText: "Can someone, please share the file?",
        imageURL: "assets/images/Backstreet Girls.jpg",
        time: ""),
    ChatUsers(name: "Family Club",
        messageText: "How are you?",
        imageURL: "assets/images/Family Club.jpg",
        time: ""),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Chat Groups"),
      // ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            // SafeArea(
            //   child: Padding(
            //     padding: EdgeInsets.only(left: 16,right: 16,top: 10),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: <Widget>[
            //         Text("Group Chats",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
            //         Container(
            //           padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
            //           height: 30,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(30),
            //             color: Colors.white70,
            //           ),
            //           child: Row(
            //             children: <Widget>[
            //               IconButton(
            //                 padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
            //                 color: Colors.white70,
            //                 icon: Icon(Icons.add,color: Colors.black54,size: 20,),
            //                 // sizedBox: SizedBox(width: 2,),
            //                 // text: Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            //                 onPressed: () {
            //                   Navigator.push(
            //                     context,
            //                     MaterialPageRoute(builder: (context) => AddContact()),
            //                   );
            //                 },
            //               ),
            //             ],
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
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
              padding: EdgeInsets.only(top: 8),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return GroupConversationList(
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

// import 'package:flutter/material.dart';
// import '../status/StatusPage.dart';
//
// class ChatGroupPage extends StatelessWidget {
//   static Route<dynamic> route() => MaterialPageRoute(
//     builder: (context) => ChatGroupPage(),
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Chat Groups"),
//       ),
//       body: Center(
//         child: FlatButton(
//           onPressed: () => Navigator.of(context).push(
//             StatusPage.route(),
//           ),
//           child: Text("Navigate to Chat Groups Detail Page"),
//         ),
//       ),
//     );
//   }
// }
