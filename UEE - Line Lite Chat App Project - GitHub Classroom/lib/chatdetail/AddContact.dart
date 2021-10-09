import 'package:flutter/material.dart';

import 'AddContactInside.dart';

class AddContact extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
    builder: (context) => AddContact(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Contact"),
        backgroundColor: Colors.blueGrey[500],
      ),
      body: AddContactInside(),

      // home: ChatGroupPage(),
    );
  }
}