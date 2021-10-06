// import 'package:calling/screens/dialScreen/dial_screen.dart';
// import 'package:calling/screens/groupCall/group_call_screen.dart';
// import 'screens/audioCallWithImage/audio_call_with_image_screen.dart';
import 'package:flutter/material.dart';
import '../screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Line Lite Chat Application',
      theme: ThemeData(
        fontFamily: "SF UI",
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: GroupCallScreen(),

      home: HomePage(),
    );
  }
}
