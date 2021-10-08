import 'package:Line_Lite/login/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
// import '../screens/HomePage.dart';
// import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:path/path.dart' as path;
// import 'package:calling/screens/dialScreen/dial_screen.dart';
// import 'package:calling/screens/groupCall/group_call_screen.dart';
// import 'screens/audioCallWithImage/audio_call_with_image_screen.dart';
import 'package:flutter/material.dart';
import 'package:Line_Lite/screens/SplashScreen.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize a new Firebase App instance
  await Firebase.initializeApp();

  runApp((MaterialApp(home: MyApp())));
  // runApp(MyApp());
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

     
      home: SplashScreen(),

      debugShowCheckedModeBanner: false,

     

     
    );
  }
}
