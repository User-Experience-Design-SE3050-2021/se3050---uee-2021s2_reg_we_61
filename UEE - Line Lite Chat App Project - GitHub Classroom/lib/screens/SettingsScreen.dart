import 'package:Line_Lite/screens/NotificationScreen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body:SingleChildScrollView(
        child:Column(
          children:<Widget> [
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: size.height*.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/blue.jpg"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: size.height*.1),
                        SettingsInfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: size.height*.4 - 30),
                  child: Column(
                    children: <Widget>[
                      SettingsCard(
                        name: "Account",
                        tag: "Privacy,security",
                        press: (){},
                      ),
                      SettingsCard(
                        name: "Chats",
                        tag: "Theme,chat history",
                        press: (){},
                      ),
                      SettingsCard(
                        name: "Notifications",
                        tag: "view notifications",
                        press: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>
                              NotificationScreen(),
                          ));
                        },
                      ),
                      SettingsCard(
                        name: "Call Logs",
                        tag: "Video and audio calls",
                        press: (){},
                      ),
                      SettingsCard(
                        name: "Help",
                        tag: "Help center",
                        press: (){},
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsCard extends StatelessWidget {
  final String name;
  final String tag;
  final Function press;

  const SettingsCard({
    Key key,
    this.name,
    this.tag, this.press,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(offset: Offset(0, 10),
          blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84),
        ),
        ],
      ),
      child: Row(
        children: <Widget>[
          RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$name \n",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: tag,
                    style: TextStyle(
                      color: Colors.black12
                    ),
                  ),
                ],
              ),
          ),
          Spacer(),
          IconButton(
              onPressed: press,
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
          ),
        ],
      ),
    );
  }
}

class SettingsInfo extends StatelessWidget {
  const SettingsInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Image.asset("assets/images/girl3.jpg",
        height: 100,
      ),
      Spacer(),
      Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  "Natasha",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  "Dream High",
                style: Theme.of(context)
                    .textTheme
                    .headline5
              ),
            ],
          ),
      ),
    ],
    );
  }
}
