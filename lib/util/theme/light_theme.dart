import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors_theme.dart';

final TextTheme lightTextTheme = TextTheme(
  // * Extremely large text.
  headline1: GoogleFonts.lato(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: ColorsTheme.lightTextColor),
  // * Used for the date in the dialog shown by showDatePicker.
  headline2: GoogleFonts.lato(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: ColorsTheme.lightTextColor),
  // * Very large text.
  headline3: GoogleFonts.lato(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: ColorsTheme.lightTextColor),
  // * Large text.
  headline4: GoogleFonts.lato(
      fontSize: 20.0,
      fontWeight: FontWeight.w300,
      color: ColorsTheme.lightTextColor),
  // * Used for large text in dialogs (e.g., the month and year in the dialog shown by showDatePicker).
  headline5: GoogleFonts.lato(
      fontSize: 20.0,
      fontWeight: FontWeight.w200,
      color: ColorsTheme.lightTextColor),
  // * Used for the primary text in app bars and dialogs (e.g., AppBar.title and AlertDialog.title).
  headline6: GoogleFonts.lato(
      fontSize: 20.0, fontWeight: FontWeight.w800, color: ColorsTheme.white),
  // * Used for the primary text in lists (e.g., ListTile.title).
  subtitle1: GoogleFonts.lato(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: ColorsTheme.lightTextColor),
  // * For medium emphasis text that's a little smaller than subtitle1.
  subtitle2: GoogleFonts.lato(
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
      color: ColorsTheme.lightTextColor),
  // * Used for emphasizing text that would otherwise be bodyText2.
  bodyText1:
      GoogleFonts.lato(fontSize: 16.0, color: ColorsTheme.lightTextColor),
  // * The default text style for Material.
  bodyText2:
      GoogleFonts.lato(fontSize: 16.0, color: ColorsTheme.lightTextColor),
  // * Used for auxiliary text associated with images.
  caption: GoogleFonts.lato(
      fontSize: 12.0, color: ColorsTheme.lightBackgroundAppBarColor),
  // * Used for text on ElevatedButton, TextButton and OutlinedButton.
  button: GoogleFonts.lato(
      fontSize: 16.0,
      color: ColorsTheme.lightTextColor,
      fontWeight: FontWeight.w600),
  // * Typically used for captions or to introduce a (larger) headline.
  overline: GoogleFonts.lato(
      fontSize: 16.0,
      color: ColorsTheme.lightTextColor,
      fontWeight: FontWeight.w600),
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: GoogleFonts.lato.toString(),
  scaffoldBackgroundColor: ColorsTheme.lightBackgroundColor,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: ColorsTheme.lightPrimaryColor,
  ),
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  ),
  colorScheme: ColorScheme.light(
    primary: ColorsTheme.lightPrimaryColor,
    primaryVariant: ColorsTheme.lightBackgroundColor,
    // secondary: ColorsTheme.lightSecondaryColor,
  ),
  snackBarTheme: SnackBarThemeData(
      backgroundColor: ColorsTheme.lightBackgroundAlertColor,
      actionTextColor: ColorsTheme.lightBackgroundActionTextColor),
  iconTheme: IconThemeData(
    color: ColorsTheme.lightIconColor,
  ),
  popupMenuTheme:
      PopupMenuThemeData(color: ColorsTheme.lightBackgroundAppBarColor),
  textTheme: lightTextTheme,
  buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      buttonColor: ColorsTheme.lightPrimaryColor,
      textTheme: ButtonTextTheme.primary),
  unselectedWidgetColor: ColorsTheme.lightPrimaryColor,
  inputDecorationTheme: InputDecorationTheme(
    //prefixStyle: GoogleFonts.lato(color: ColorsTheme.lightIconColor),
    border: OutlineInputBorder(
        borderSide: BorderSide(width: 1.0),
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        )),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsTheme.lightBorderColor, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsTheme.lightBorderActiveColor),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsTheme.lightBorderErrorColor),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsTheme.lightBorderErrorColor),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    fillColor: ColorsTheme.lightBackgroundSecondaryColor,
    //focusColor: ColorsTheme.lightBorderActiveColor,
  ),
);
