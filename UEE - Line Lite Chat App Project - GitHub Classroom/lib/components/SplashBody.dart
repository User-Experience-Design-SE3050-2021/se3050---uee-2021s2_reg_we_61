import 'package:Line_Lite/SizeConfig.dart';
import 'package:Line_Lite/screens/HomePage.dart';
import 'package:flutter/material.dart';
import '../components/SplashContent.dart';
import 'DefaultButton.dart';

class SplashBody extends StatefulWidget {
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;
  List<Map<String,String>> splashData = [
    {
      "text":"Welcome to LINE LITE.streamlined and faster than \never!",
      "image":"assets/images/sp.png"
    },
    {
      "text":"Best chat features",
      "image":"assets/images/sp1.jpg"
    },
    {
      "text":"Video calling and audio calling",
      "image":"assets/images/sp3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:SizedBox(
        width: double.infinity,
        child:Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value){
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount:splashData.length,
                itemBuilder: (context,index)=>SplashContent(
                image: splashData[index]["image"],
                text: splashData[index]["text"],
              ),
              ),
            ),
            Expanded(
              flex: 2,
              child:Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                  ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children:List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Get Started",
                      press: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>
                              HomePage(),
                        ),
                        );
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}){
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 :6,
      decoration: BoxDecoration(
        color:currentPage == index ? Color(0xFF091C40):Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}


