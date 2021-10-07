import 'package:Line_Lite/groupchat/CreateNewGroupInside.dart';
import 'package:flutter/material.dart';

class CreateNewGroup extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
    builder: (context) => CreateNewGroup(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New Group"),
        backgroundColor: Colors.blueGrey[500],
      ),
      body: CreateNewGroupInside(),

      // home: ChatGroupPage(),
    );
  }
}