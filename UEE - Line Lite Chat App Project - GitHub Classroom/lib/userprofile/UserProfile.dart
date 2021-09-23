import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
    builder: (context) => UserProfile(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
      ),
      body: Center(
        child: Text("Hello, Profile!"),
      ),
    );
  }
}