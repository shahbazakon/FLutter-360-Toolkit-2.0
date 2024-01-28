import 'package:flutter/material.dart';

import '../commons/app_component.dart';
import '../commons/colors.dart';

ThemeData lightTheme = ThemeData(
  highlightColor: Colors.grey,
  iconTheme: IconThemeData(color: primaryBlackColor),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: primaryBlackColor),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStatePropertyAll(Colors.transparent),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButtonStyle1,
  ),
  checkboxTheme: CheckboxThemeData(
    side: BorderSide(color: primaryBlackColor, width: 2),
    fillColor: MaterialStatePropertyAll(Colors.black87),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    focusColor: primaryBlackColor,
    fillColor: Colors.grey.shade100.withOpacity(0.8),
    filled: true,
    hintStyle: TextStyle(fontSize: 13),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: primaryBlackColor), borderRadius: BorderRadius.circular(15)),
    disabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
    border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: 16,
      color: primaryBlackColor,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: primaryBlackColor,
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
      fontSize: 20,
      color: primaryBlackColor,
      fontWeight: FontWeight.w600,
    ),
  ),
  colorScheme: ThemeData().colorScheme.copyWith(primary: primaryBlackColor).copyWith(background: Colors.white, primary: primaryColor),
);
