import 'package:flutter/material.dart';
class AppColor{
  static final Color pink01 = getColorFromHex("#EF4765");
  static final Color pink02 = getColorFromHex("#FF9BAD");
  static final Color yellow01 = getColorFromHex("#FFC875");
  static final Color cream01 = getColorFromHex("#FFECD0");
  static final Color grey01 = getColorFromHex("#5E5E5E");
  static final Color grey02 = getColorFromHex("#ACACAC");
  static final Color grey03 = getColorFromHex("#F1F2F2");
  static final Color white = getColorFromHex("#FFFFFF");
  static final Color black = getColorFromHex("#000000");
  static final Color green = getColorFromHex("#43F054");
  static final Color shadowColor = getColorFromHex("#939393");


   static Color getColorFromHex(String hex) {
    return Color(int.parse(hex.replaceAll('#', '0xFF')));
  }

}
