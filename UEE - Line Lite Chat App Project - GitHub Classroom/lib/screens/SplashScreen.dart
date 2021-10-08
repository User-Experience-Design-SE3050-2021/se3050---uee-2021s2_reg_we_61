import 'package:Line_Lite/SizeConfig.dart';
import 'package:Line_Lite/components/SplashBody.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SplashBody(),
    );
  }
}
