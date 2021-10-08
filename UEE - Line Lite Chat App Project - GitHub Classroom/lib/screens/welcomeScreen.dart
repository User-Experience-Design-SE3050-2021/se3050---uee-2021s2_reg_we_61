import 'dart:ui';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset("assets/images/lite4.PNG"),
              Spacer(flex: 2),
              Text("Welcome to LINE Lite",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                  "Try LINE Lite - streamlined and faster than \never!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .color
                      .withOpacity(0.64),
                ),
              ),
              Spacer(flex: 3),
              FittedBox(
                child: TextButton(
                    onPressed: () =>
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>
                            HomePage(),
                      ),
                ),
                    child: Row(
                      children: [
                        Text(
                          "Get Started",
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .color
                                  .withOpacity(0.8)
                          ),
                        ),
                        SizedBox(width: 20.0/4),
                        Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .color
                                .withOpacity(0.8)
                        )
                      ],
                    )
                ),
              )
                ],
          ),
      ),
    );
  }
  
}