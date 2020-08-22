import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white70, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
//$color-primary: #55c57a;
//$color-primary-light: #7ed56f;
//$color-primary-dark: #28b485;
//
//$color-secondary-light: #ffb900;
//$color-secondary-dark: #ff7730;
//
//$color-red-light: #ff7700;
//$color-red-dark: #ff0000;
//
//$color-tertiary-light: #2998ff;
//$color-tertiary-dark: #5643fa;
//
//$color-grey-light-1: #f7f7f7;
//$color-grey-light-2: #eee;
//
//$color-grey-dark: #777;
//$color-grey-dark-2: #999;
//$color-grey-dark-3: #333;
//
//$color-white: #fff;
//$color-black: #000;