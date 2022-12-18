import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xfff41b5eb);
const kSecondaryColor = Color(0xfff3272b3);

const kWelcomeTextStyle = TextStyle(
  fontFamily: 'Luffy',
  fontSize: 60.0,
  fontWeight: FontWeight.w900,
);
const kh3TextStyle = TextStyle(
  fontFamily: 'Luffy',
  fontSize: 35.0,
  color: kPrimaryColor,
  fontWeight: FontWeight.w900,
);

const kcolorizeColors = [
  kPrimaryColor,
  kSecondaryColor,
  Color(0xfffe6ad3a),
  Colors.red,
];
const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 15),
  ],
  borderRadius: BorderRadius.all(
    Radius.circular(12.0),
  ),
);

const kTextFieldstyle = TextStyle(color: Colors.black87);
const kMsgTextFieldstyle = TextStyle(
  color: Colors.black87,
);

const kInputDecoration = InputDecoration(
  hintText: 'Enter your email',
  hintStyle: TextStyle(color: Colors.grey),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kSecondaryColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);
