import 'package:Line_Lite/status/StoryPageView.dart';
import 'package:flutter/material.dart';

class OthersStatus extends StatelessWidget {
  const OthersStatus({Key key, this.name, this.time, this.backgroundImage})
      : super(key: key);
  final String name;
  final String time;
  final ImageProvider backgroundImage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 26,
        backgroundImage: AssetImage('assets/img2.png'),
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: Text(
        time,
        style: TextStyle(fontSize: 14, color: Colors.grey[900]),
      ),
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => StoryPageView())),
    );
  }
}
