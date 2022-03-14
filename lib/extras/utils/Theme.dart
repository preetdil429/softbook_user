import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:nb_utils/nb_utils.dart';


class AppThemeData {
  //
  AppThemeData._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: whiteColor,
    primaryColor: colorPrimary,
    primaryColorDark: colorPrimary,
    errorColor: Colors.red,
    hoverColor: Colors.white54,
    dividerColor: viewLineColor,
    cursorColor: Colors.black,
    // fontFamily: GoogleFonts.nunito().fontFamily,
    appBarTheme: AppBarTheme(
      color: color_layout_background,
      iconTheme: IconThemeData(color: textPrimaryColor),
    ),
    colorScheme: ColorScheme.light(
      primary: colorPrimary,
      primaryVariant: colorPrimary,
    ),
    cardTheme: CardTheme(color: Colors.white),
    iconTheme: IconThemeData(color: textPrimaryColor),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: whiteColor),
    textTheme: TextTheme(
      button: TextStyle(color: colorPrimary),
      headline6: TextStyle(color: textPrimaryColor),
      subtitle2: TextStyle(color: textSecondaryColor),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ).copyWith(
      pageTransitionsTheme: PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: ZoomPageTransitionsBuilder(),
        TargetPlatform.macOS: ZoomPageTransitionsBuilder(),
      }));

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: color_background_dark,
    highlightColor: color_background_dark,
    errorColor: Color(0xFFCF6676),
    appBarTheme: AppBarTheme(
        color: color_background_dark,
        iconTheme: IconThemeData(color: whiteColor)),
    primaryColor: color_primary_black,
    accentColor: whiteColor,
    dividerColor: Color(0xFFDADADA).withOpacity(0.3),
    primaryColorDark: color_primary_black,
    cursorColor: Colors.white,
    hoverColor: Colors.black12,
    // fontFamily: GoogleFonts.nunito().fontFamily,
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: color_background_dark),
    primaryTextTheme: TextTheme(
      headline6: primaryTextStyle(color: Colors.white),
      overline: primaryTextStyle(color: Colors.white),
    ),
    colorScheme: ColorScheme.dark(
      primary: color_background_dark,
      onPrimary: color_card_background_dark,
      primaryVariant: color_primary_black,
    ),
    cardTheme: CardTheme(color: color_card_background_dark),
    iconTheme: IconThemeData(color: whiteColor),
    textTheme: TextTheme(
      button: TextStyle(color: color_primary_black),
      headline6: TextStyle(color: whiteColor),
      subtitle2: TextStyle(color: Colors.white54),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ).copyWith(
      pageTransitionsTheme: PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: ZoomPageTransitionsBuilder(),
        TargetPlatform.macOS: ZoomPageTransitionsBuilder(),
      }));
}
