import 'package:flutter/material.dart';

Color primaryColor = Color.fromRGBO(43, 46, 74, 1);
Color primaryColor2 = Color.fromRGBO(55, 58, 86, 1);
Color accentColor = Color.fromRGBO(232, 69, 69, 1);
Color accentColor2 = Color.fromRGBO(144, 55, 73, 1);
Color accentColor3 = Color.fromRGBO(83, 53, 74, 1);

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.white,
  accentColor: accentColor,
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.black,
      fontSize: 10,
      fontFamily: 'Ubuntu',
    ),
  ),
  appBarTheme: AppBarTheme(
    color: primaryColor,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
      ),
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
      size: 20,
    ),
    elevation: 0,
  ),
  backgroundColor: primaryColor2,
  primaryTextTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.bold,
    ),
    bodyText2: TextStyle(
      color: accentColor2,
      fontSize: 18,
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.bold,
    ),
    subtitle1: TextStyle(
      color: Colors.grey,
      fontSize: 16,
      fontFamily: 'Ubuntu',
    ),
    subtitle2: TextStyle(
      color: Colors.grey,
      fontSize: 13,
      fontFamily: 'Ubuntu',
    ),
    caption: TextStyle(
      color: Colors.white,
      fontSize: 60,
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.w200,
    ),
  ),
  cardTheme: CardTheme(
    clipBehavior: Clip.antiAlias,
  ),
  primaryColorLight: accentColor2,
  primaryColorDark: accentColor3,
  cardColor: primaryColor,
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.white,
  accentColor: accentColor,
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.black,
      fontSize: 10,
      fontFamily: 'Ubuntu',
    ),
  ),
  appBarTheme: AppBarTheme(
    color: primaryColor,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
      ),
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
      size: 20,
    ),
    elevation: 0,
  ),
  backgroundColor: primaryColor2,
  primaryTextTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.bold,
    ),
    bodyText2: TextStyle(
      color: accentColor2,
      fontSize: 18,
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.bold,
    ),
    subtitle1: TextStyle(
      color: Colors.grey,
      fontSize: 16,
      fontFamily: 'Ubuntu',
    ),
    subtitle2: TextStyle(
      color: Colors.grey,
      fontSize: 13,
      fontFamily: 'Ubuntu',
    ),
    caption: TextStyle(
      color: Colors.white,
      fontSize: 60,
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.w200,
    ),
  ),
  cardTheme: CardTheme(
    clipBehavior: Clip.antiAlias,
  ),
  primaryColorLight: accentColor2,
  primaryColorDark: accentColor3,
  cardColor: primaryColor,
);
