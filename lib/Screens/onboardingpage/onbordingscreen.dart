import 'package:flutter/material.dart';
import 'package:whtasapp_series/Screens/login/loginscreen.dart';
import 'package:whtasapp_series/Widget/uihelper.dart';

class OnBordingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/board.png'),
            SizedBox(
              height: 15,
            ),
            UIHelper().CustomText(
                text: "Welcome to Whatsapp",
                hight: 20,
                color: Colors.black87,
                fontweight: FontWeight.bold),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper().CustomText(
                    text: 'read out', hight: 14, color: Colors.black87),
                UIHelper().CustomText(
                    text: " Privacy Policy", hight: 14, color: Colors.blue),
                UIHelper().CustomText(
                    text: ' ' 'Tap and Agree Continue' '',
                    hight: 14,
                    color: Colors.black87),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper().CustomText(
                    text: 'to accept the', hight: 14, color: Colors.black87),
                UIHelper().CustomText(
                    text: ' Team of the Service', hight: 14, color: Colors.blue)
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UIHelper()
          .CustomButton(voidcall: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
      }, buttonname: 'Agree And Continue'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
