import 'package:Line_Lite/login/CountryPage.dart';
import 'package:Line_Lite/login/OtpPage.dart';
import 'package:Line_Lite/models/CountryModel.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String countryname = "Sri Lanka";
  String countrycode = "+94";
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/login.png',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Add your phone number. Line Lite will send you a verification code so we know you're real",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 28,
              ),

              countryCard(),
              SizedBox(
                height: 15,
              ),
              number(),
              SizedBox(
                height: 35,
              ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_controller.text.length < 9) {
                         showMydialogue1();
                       } else {
                         showMydialogue();
                       }
              },
              style: ButtonStyle(
                foregroundColor:
                MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.blueGrey[800],),
                shape:
                MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  'Send',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          )
            ],
          ),
        )


      ),
    );
  }

  Widget countryCard() {
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builder) => CountryPage(
                        setCountryData: setCountryData,
                      )));
        },
        child: Container(
            padding: EdgeInsets.all(18),

            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.blueGrey[800],
              width: 1.8,
            ))),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        child: Center(
                            child: Text(
                  countryname,
                  style: TextStyle(fontSize: 20),
                )))),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.blueGrey[800],
                  size: 28,
                )
              ],
            )));
  }

  Widget number() {
    return Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: 38,
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Container(
              width: 70,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: Colors.blueGrey[800],
                width: 1.8,
              ))),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text("+", style: TextStyle(fontSize: 20)),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    countrycode.substring(1),
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: Colors.blueGrey[800],
                width: 1.8,
              ))),
              width: MediaQuery.of(context).size.width / 1.5 - 100,
              child: TextFormField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                    hintText: "phone number"),
              ),
            ),
          ],
        ));
  }

  void setCountryData(CountryModel countryModel) {
    setState(() {
      countryname = countryModel.name;
      countrycode = countryModel.code;
    });
    Navigator.pop(context);
  }

  Future<void> showMydialogue() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(

            content: SingleChildScrollView(

              child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "We will be verifying your phone number.",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    countrycode + " " + _controller.text,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Is this OK, or would you like to edit the number?",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            actions: [
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueGrey[800],),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Edit',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 40,
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => OtpPage(
                              countryCode: countrycode,
                              number: _controller.text,
                            )));
                  },
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueGrey[800],),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Ok',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 50,
              ),
            ],
          );
        });
  }

  Future<void> showMydialogue1() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Wrong format!!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            actions: [
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(

                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueGrey[800],),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Ok',

                      style: TextStyle(fontSize: 16,),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 85,
              )
            ],
          );
        });
  }
}
