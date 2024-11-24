import 'package:flutter/material.dart';

class UIHelper {
  // uihelper is a class name

   CustomButton(
      {required voidcall, callback, required String buttonname}) {
    // static is a key word

    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )
        ),
        onPressed: () {
      voidcall();
        },
        child: Text(
          buttonname,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );

  }

   CustomText(
      {required String text,
      required double hight,
      Color? color,
      FontWeight? fontweight}) {
    return Text(
      text,
      style: TextStyle(fontSize: hight, color: color ?? Color(0xFF5EFE5E),
        fontWeight: fontweight,
      ),

    );
  }
}
