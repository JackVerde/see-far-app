import 'package:flutter/material.dart';

ThemeData basicTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryTextTheme: base.primaryTextTheme.copyWith(
      headline: base.primaryTextTheme.headline.copyWith(
        color: Colors.black,
      ),
      title: base.primaryTextTheme.title.copyWith(
        color: Colors.black,
      ),
    ),
    textTheme: base.textTheme.copyWith(
      headline: base.textTheme.headline.copyWith(
        color: Colors.black,
      )
    ),
    primaryColor: Color(0xFFAAC94B),
    scaffoldBackgroundColor: Color(0xFFE0E0E0),
    backgroundColor: Color(0xFFE0E0E0),
    buttonColor: Color(0xFF789816),
    accentColor: Colors.black,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: Color(0xFFAAC94B),
    ),
    /*appBarTheme: base.appBarTheme.copyWith(
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.black,
        ),
      ),
    ),*/
  );
}