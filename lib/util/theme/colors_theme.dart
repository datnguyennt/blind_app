import 'package:flutter/material.dart';

abstract class ColorsTheme {
  static const Color dodgerBlue = Color.fromRGBO(29, 161, 242, 1);
  static const Color whiteLilac = Color.fromRGBO(248, 250, 252, 1);
  static const Color blackPearl = Color.fromRGBO(30, 31, 43, 1);
  static const Color brinkPink = Color.fromRGBO(255, 97, 136, 1);
  static const Color juneBud = Color.fromRGBO(186, 215, 97, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color nevada = Color.fromRGBO(105, 109, 119, 1);
  static const Color ebonyClay = Color.fromRGBO(40, 42, 58, 1);

  static const String font1 = "ProductSans";
  static const String font2 = "Roboto";

//constants color range for light theme
//main color
  static const Color lightPrimaryColor = dodgerBlue;

//Background Colors
  static const Color lightBackgroundColor = whiteLilac;
  static const Color lightBackgroundAppBarColor = lightPrimaryColor;
  static const Color lightBackgroundSecondaryColor = white;
  static const Color lightBackgroundAlertColor = blackPearl;
  static const Color lightBackgroundActionTextColor = white;
  static const Color lightBackgroundErrorColor = brinkPink;
  static const Color lightBackgroundSuccessColor = juneBud;

//Text Colors
  static const Color lightTextColor = blackPearl;
  static const Color lightAlertTextColor = blackPearl;
  static const Color lightTextSecondaryColor = blackPearl;

//Border Color
  static const Color lightBorderColor = nevada;

//Icon Color
  static const Color lightIconColor = nevada;

//form input colors
  static const Color lightInputFillColor = lightBackgroundSecondaryColor;
  static const Color lightBorderActiveColor = lightPrimaryColor;
  static const Color lightBorderErrorColor = brinkPink;

//constants color range for dark theme
  static const Color darkPrimaryColor = dodgerBlue;

//Background Colors
  static const Color darkBackgroundColor = ebonyClay;
  static const Color darkBackgroundAppBarColor = darkPrimaryColor;
  static const Color darkBackgroundSecondaryColor = Color.fromRGBO(0, 0, 0, .6);
  static const Color darkBackgroundAlertColor = blackPearl;
  static const Color darkBackgroundActionTextColor = white;

  static const Color darkBackgroundErrorColor = Color.fromRGBO(255, 97, 136, 1);
  static const Color darkBackgroundSuccessColor = Color.fromRGBO(186, 215, 97, 1);

//Text Colors
  static const Color darkTextColor = white;
  static const Color darkAlertTextColor = white;
  static const Color darkTextSecondaryColor = white;

//Border Color
  static const Color darkBorderColor = nevada;

//Icon Color
  static const Color darkIconColor = white;

  static const Color darkInputFillColor = darkBackgroundSecondaryColor;
  static const Color darkBorderActiveColor = darkPrimaryColor;
  static const Color darkBorderErrorColor = brinkPink;
}
