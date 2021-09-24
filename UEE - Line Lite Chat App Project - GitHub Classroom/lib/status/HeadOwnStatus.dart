import 'package:Line_Lite/status/AddStatusPage.dart';
import 'package:flutter/material.dart';

class HeadOwnStatus extends StatelessWidget {
  const HeadOwnStatus({Key key, this.backgroundImage}) : super(key: key);
  final ImageProvider backgroundImage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => AddStatusPage()));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/img1.png'),
              radius: 27,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.greenAccent[700],
              radius: 10,
              child: Icon(
                Icons.add,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      title: Text(
        "My Status",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text(
        "Tap to add status update",
        style: TextStyle(fontSize: 13, color: Colors.grey[900]),
      ),
    );
  }
}
