import 'package:Line_Lite/screens/HomePage.dart';
import 'package:Line_Lite/status/StatusPage.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends StatefulWidget {
  OtpPage({Key key, this.countryCode, this.number}) : super(key: key);
  final String number;
  final String countryCode;

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Line Lite",
          style: TextStyle(
              color: Colors.white, fontSize: 16.5, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              SizedBox(
                height: 75,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Verify ${widget.countryCode} ${widget.number}",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ])),
              SizedBox(
                height: 50,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "We have sent an SMS with a code to",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.5,
                      ),
                    ),
                    // TextSpan(
                    //   text: " " + widget.countryCode + " " + widget.number,
                    //   style: TextStyle(
                    //     color: Colors.black,
                    //     fontSize: 14.5,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // TextSpan(
                    //   text: "Wrong number?",
                    //   style: TextStyle(
                    //     color: Colors.green,
                    //     fontSize: 14.5,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                  ])),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: " " + widget.countryCode + " " + widget.number,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // TextSpan(
                    //   text: "Wrong number?",
                    //   style: TextStyle(
                    //     color: Colors.green,
                    //     fontSize: 14.5,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                  ])),
              SizedBox(
                height: 5,
              ),
              OTPTextField(
                length: 6,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 30,
                style: TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Enter 6-digit code",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              bottomButton("Resend Code", Icons.message),
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => HomePage()));
                },
                child: Container(
                  color: Colors.green,
                  height: 40,
                  width: 70,
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomButton(String text, IconData icon) {
    return Row(
      children: [
        Icon(
          Icons.message,
          color: Colors.green,
          size: 24,
        ),
        SizedBox(
          width: 25,
        ),
        Text(
          "Resend SMS",
          style: TextStyle(color: Colors.green, fontSize: 14.5),
        )
      ],
    );
  }
}
