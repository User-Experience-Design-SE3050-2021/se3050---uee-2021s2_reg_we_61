import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
    builder: (context) => StatusPage(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Status"),
      ),
      body: Center(
        child: Text("Hello, Status!"),
      ),
    );
  }
}