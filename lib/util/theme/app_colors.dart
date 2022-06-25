import 'package:flutter/material.dart';
class AppColor{
  static final HexColor pink01 = HexColor("#EF4765");
  static final HexColor pink02 = HexColor("#FF9BAD");
  static final HexColor yellow01 = HexColor("#FFC875");
  static final HexColor cream01 = HexColor("#FFECD0");
  static final HexColor grey01 = HexColor("#5E5E5E");
  static final HexColor grey02 = HexColor("#ACACAC");
  static final HexColor grey03 = HexColor("#F1F2F2");
  static final HexColor white = HexColor("#FFFFFF");
  static final HexColor black = HexColor("#000000");
  static final HexColor green = HexColor("#43F054");

}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
