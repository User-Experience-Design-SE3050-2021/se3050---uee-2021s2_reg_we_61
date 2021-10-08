import 'package:Line_Lite/screens/HomePage.dart';
import 'package:Line_Lite/status/HeadOwnStatus.dart';
import 'OthersStatus.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  // static Route<dynamic> route() => MaterialPageRoute(
  //       builder: (context) => StatusPage(),
  //     );
  const StatusPage({Key key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => HomePage()));
            }),
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text("Status",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18,
              wordSpacing: 1,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadOwnStatus(),
            label("Recent Updates"),
            OthersStatus(
                name: "Anne Anderson",
                // imageName: "assets/img1.png",
                time: "01.27"),
            SizedBox(
              height: 10,
            ),
            label("Viewed Updates"),
            OthersStatus(
                name: "Nina Jones",
                // imageName: "assets/img1.png",
                time: "12.50"),
          ],
        ),
      ),
    );
  }

  Widget label(String labelname) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Text(
          labelname,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
