import 'package:Line_Lite/models/CountryModel.dart';
import 'package:flutter/material.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({Key key, this.setCountryData}) : super(key: key);
  final Function setCountryData;

  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List<CountryModel> countries = [
    CountryModel(name: "Afghanistan", code: "+93", flag: "🇦🇫"),
    CountryModel(name: "Bulgaria", code: "+359", flag: "🇧🇬"),
    CountryModel(name: "Canada", code: "+1", flag: "🇨🇦"),
    CountryModel(name: "France", code: "+33", flag: "🇫🇷"),
    CountryModel(name: "India", code: "+98", flag: "🇮🇳"),
    CountryModel(name: "Italy", code: "+39", flag: "🇮🇹"),
    CountryModel(name: "Pakistan", code: "+92", flag: "🇵🇰"),
    CountryModel(name: "Philippines", code: "+63", flag: "🇵🇭"),
    CountryModel(name: "Spain", code: "+34", flag: "🇪🇸"),
    CountryModel(name: "Sri Lanka", code: "+94", flag: "🇱🇰"),
    CountryModel(name: "Sweden", code: "+46", flag: "🇸🇪"),
    CountryModel(name: "United Kingdom", code: "+44", flag: "🇬🇧"),
    CountryModel(name: "United States", code: "+1", flag: "🇺🇸"),
    CountryModel(name: "Vietnam", code: "+84", flag: "🇻🇳"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text("Choose a country",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18,
              wordSpacing: 1,
            )),
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.search,
        //         color: Colors.teal,
        //       ))
        // ],
      ),
      body: ListView.builder(
          itemCount: countries.length,
          itemBuilder: (context, index) => card(countries[index])),
    );
  }

  Widget card(CountryModel country) {
    return InkWell(
        onTap: () {
          widget.setCountryData(country);
        },
        child: Card(
          margin: EdgeInsets.all(0.15),
          child: Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: [
                  Text(country.flag),
                  SizedBox(width: 15),
                  Text(country.name),
                  Expanded(
                    child: Container(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(country.code),
                          ],
                        )),
                  ),
                ],
              )),
        ));
  }
}
