import 'package:Line_Lite/SizeConfig.dart';
import 'package:flutter/material.dart';
import '../components/AudioCall.dart';


class AudioCallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: AudioCall(),
    );
  }
}
