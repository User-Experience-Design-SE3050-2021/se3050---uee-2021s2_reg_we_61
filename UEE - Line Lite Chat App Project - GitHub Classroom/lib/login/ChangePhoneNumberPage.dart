import 'package:flutter/material.dart';
import 'CountryPage.dart';
import '../models/CountryModel.dart';
import 'OtpPage.dart';
class ChangePhoneNumberPage extends StatefulWidget {
  ChangePhoneNumberPage({Key key}) : super(key: key);

  @override
  _ChangePhoneNumberPageState createState() => _ChangePhoneNumberPageState();
}

class _ChangePhoneNumberPageState extends State<ChangePhoneNumberPage> {
  String countryname = "Sri Lanka";
  String countrycode = "+94";
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text("Change Phone Number",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18,
              wordSpacing: 1,
            )),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Enter your old phone number with the country code:",
              style: TextStyle(
                fontSize: 12.8,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter your new phone number with the country code:",
              style: TextStyle(fontSize: 12.8, color: Colors.green),
            ),
            SizedBox(
              height: 15,
            ),
            countryCard(),
            SizedBox(
              height: 15,
            ),
            number(),
            Expanded(
              child: Container(),
            ),
            InkWell(
              onTap: () {
                if (_controller.text.length < 9) {
                  showMydialogue1();
                } else {
                  showMydialogue();
                }
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
            SizedBox(
              height: 150,
            ),
          ],
        ),
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
            width: MediaQuery.of(context).size.width / 1.5,
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.green,
              width: 1.8,
            ))),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        child: Center(
                            child: Text(
                  countryname,
                  style: TextStyle(fontSize: 16),
                )))),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.green,
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
                color: Colors.green,
                width: 1.8,
              ))),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text("+", style: TextStyle(fontSize: 18)),
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
                color: Colors.green,
                width: 1.8,
              ))),
              width: MediaQuery.of(context).size.width / 1.5 - 100,
              child: TextFormField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8),
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
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Edit")),
              TextButton(
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
                  child: Text("Ok"))
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "We will be veryfiyng your phone number",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Ok"))
            ],
          );
        });
  }
}
