import 'package:flutter/material.dart';

final theme = ThemeData(
  primaryColor: const Color(0xff3bacdb),
  accentColor: const Color(0xffef4c66),
  splashColor: const Color(0xffffffff),
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      letterSpacing: 0,
    ),
    headline2: TextStyle(fontSize: 25, letterSpacing: 0.25,color: Colors.white,fontWeight: FontWeight.bold),
    bodyText1: TextStyle(fontSize: 25, letterSpacing: 0.25,color: Colors.white),
    bodyText2: TextStyle(fontSize: 14, letterSpacing: 0.25),
    subtitle1: TextStyle(fontSize: 16, letterSpacing: 0.15),
    subtitle2: TextStyle(fontSize: 14, letterSpacing: 0.1),
    button: TextStyle(fontSize: 14, letterSpacing: 1.25),
    caption: TextStyle(fontSize: 12, letterSpacing: 0.4),
    overline: TextStyle(fontSize: 12, letterSpacing: 2),
  ),
);
