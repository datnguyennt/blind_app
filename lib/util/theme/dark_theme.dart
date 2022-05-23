import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MaterialColors.dart';
import 'colors_theme.dart';

final TextTheme darkTextTheme = TextTheme(
  // * Extremely large text.
  headline1: GoogleFonts.lato(
      fontSize: 20.0, fontWeight: FontWeight.w600, color: MaterialDarkColors.onSurfaceDark),
  // * Used for the date in the dialog shown by showDatePicker.
  headline2: GoogleFonts.lato(
      fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.blue),
  // * Very large text.
  headline3: GoogleFonts.lato(
      fontSize: 20.0, fontWeight: FontWeight.w400, color: Colors.orange),
  // * Large text.
  headline4: GoogleFonts.lato(
      fontSize: 20.0, fontWeight: FontWeight.w300, color: Colors.green),
  // * Used for large text in dialogs (e.g., the month and year in the dialog shown by showDatePicker).
  headline5: GoogleFonts.lato(
      fontSize: 20.0,
      fontWeight: FontWeight.w200,
      color: MaterialDarkColors.onSurfaceDark),
  // * Used for the primary text in app bars and dialogs (e.g., AppBar.title and AlertDialog.title).
  headline6: GoogleFonts.lato(
      fontSize: 20.0,
      fontWeight: FontWeight.w800,
      color: MaterialDarkColors.onSurfaceDark),
  // * Used for the primary text in lists (e.g., ListTile.title).
  subtitle1: GoogleFonts.lato(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: MaterialDarkColors.onSurfaceDark),
  // * For medium emphasis text that's a little smaller than subtitle1.
  subtitle2: GoogleFonts.lato(
      fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.blueAccent),
  // * Used for emphasizing text that would otherwise be bodyText2.
  bodyText1: GoogleFonts.lato(fontSize: 16.0, color: MaterialDarkColors.onSurfaceDark),
  // * The default text style for Material.
  bodyText2: GoogleFonts.lato(fontSize: 16.0, color: MaterialDarkColors.onSurfaceDark),
  // * Used for auxiliary text associated with images.
  caption: GoogleFonts.lato(
      fontSize: 12.0, color: ColorsTheme.darkBackgroundAppBarColor),
  // * Used for text on ElevatedButton, TextButton and OutlinedButton.
  button: GoogleFonts.lato(
      fontSize: 16.0,
      color: MaterialDarkColors.onSurfaceDark,
      fontWeight: FontWeight.w600),
  // * Typically used for captions or to introduce a (larger) headline.
  overline: GoogleFonts.lato(
      fontSize: 16.0,
      color: MaterialDarkColors.onSurfaceDark,
      fontWeight: FontWeight.w600),
);

//the dark theme
ThemeData darkTheme = ThemeData(
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  hoverColor: Colors.transparent,
  brightness: Brightness.dark,
  fontFamily: GoogleFonts.lato.toString(),
  scaffoldBackgroundColor: MaterialDarkColors.backgroundDark,
  backgroundColor: MaterialDarkColors.backgroundDark,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: MaterialDarkColors.backgroundDark,
  ),
  appBarTheme: AppBarTheme(
    actionsIconTheme: IconThemeData(
      color: MaterialDarkColors.onSurfaceDark,
      opacity: 100,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.light,
    color: MaterialDarkColors.surfaceDark,
    // backgroundColor: MaterialDarkColors.surfaceDark,
    foregroundColor: MaterialDarkColors.onSurfaceDark,
    shadowColor: MaterialDarkColors.surfaceDark.withAlpha(80),
    iconTheme: IconThemeData(
      // color: MaterialDarkColors.onSurfaceDark,
      color: MaterialDarkColors.onSurfaceDark,
      opacity: 0.7,
    ),
    // toolbarTextStyle: TextStyle(
    //   color: Colors.red,
    // ),
    // titleTextStyle: TextStyle(
    //   color: MaterialDarkColors.onSurfaceDark,
    // )
  ),
  cardTheme: CardTheme(
    color: MaterialDarkColors.surfaceDark,
  ),
  colorScheme: ColorScheme.dark(
    primary: ColorsTheme.darkPrimaryColor,
    primaryVariant: ColorsTheme.darkBackgroundColor,
    // secondary: ColorsTheme.darkSecondaryColor,
  ),
  snackBarTheme: SnackBarThemeData(
      contentTextStyle: GoogleFonts.lato(color: Colors.white),
      backgroundColor: ColorsTheme.darkBackgroundAlertColor,
      actionTextColor: ColorsTheme.darkBackgroundActionTextColor),
  iconTheme: IconThemeData(
    color: ColorsTheme.darkIconColor, //ColorsTheme.darkIconColor,
  ),
  popupMenuTheme:
      PopupMenuThemeData(color: ColorsTheme.darkBackgroundAppBarColor),
  textTheme: darkTextTheme,
  buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      buttonColor: ColorsTheme.darkPrimaryColor,
      textTheme: ButtonTextTheme.primary),
  unselectedWidgetColor: ColorsTheme.darkPrimaryColor,
  inputDecorationTheme: InputDecorationTheme(
    prefixStyle: GoogleFonts.lato(color: ColorsTheme.darkIconColor),
    //labelStyle: GoogleFonts.lato(color: nevada),
    border: OutlineInputBorder(
        borderSide: BorderSide(width: 1.0),
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        )),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsTheme.darkBorderColor, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsTheme.darkBorderActiveColor),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsTheme.darkBorderErrorColor),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsTheme.darkBorderErrorColor),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    fillColor: ColorsTheme.darkInputFillColor,
    //focusColor: ColorsTheme.darkBorderActiveColor,
  ),
);
