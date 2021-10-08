import 'package:Line_Lite/SizeConfig.dart';
import 'package:Line_Lite/components/DialScreenBody.dart';
import 'package:flutter/material.dart';

class DialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFF091C40),
      body: DialScreenBody(),
    );
  }
}
