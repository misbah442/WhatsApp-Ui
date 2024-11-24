import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whtasapp_series/Widget/uihelper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedcountry = "pakistan";   // by default

  List<String> countries = [
    // list of the array
    "india",
    'africa',
    'america',
    'turkey',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: UIHelper().CustomText(
                text: "Enter Your Phone Number",
                hight: 20,
                fontweight: FontWeight.bold,
                color: Colors.green),
          ),
          SizedBox(
            height: 30,
          ),
          UIHelper().CustomText(
              text: "Whatsapp will need to varify your number",
              hight: 16,
              color: Colors.black87),
          SizedBox(
            height: 5,
          ),
          UIHelper().CustomText(
              text: "number cariere charge my apply",
              hight: 16,
              color: Colors.black87),
          SizedBox(
            height: 5,
          ),
          UIHelper().CustomText(
              text: "What,s my number", hight: 16, color: Colors.green),
          DropdownButtonFormField(
            items: countries.map((String countries) {
              return DropdownMenuItem(
                child: Text(countries),
                value: countries,);
            }).toList(),
            onChanged: (newvalue) {
              setState(() {
                // update the countires
                selectedcountry = newvalue!; // not null value
              });
            },
            value: selectedcountry,decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              ),
            )
          ),
          )
        ],
      ),
    );
  }
}
