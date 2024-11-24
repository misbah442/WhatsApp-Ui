

import 'dart:async';
import 'dart:nativewrappers';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whtasapp_series/Screens/onboardingpage/onbordingscreen.dart';
import 'package:whtasapp_series/Widget/uihelper.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override

void initState() {
  super.initState();
  Timer(Duration(seconds: 3), () {
    Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => OnBordingScreen()),);
  });
}


Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/whatsapp 1.png'),
            SizedBox(
              height: 20,
            ),
            UIHelper().CustomText(
                text: 'Whatsapp', hight: 22, fontweight: FontWeight.bold)
          ],
        ),
      ),
    );

  }
}
