import 'package:alpenarm/resources/colors.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primaryColor,
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: AppColors.primaryColor,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    alignLabelWithHint: true,
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
      color: AppColors.primaryColorDark,
      width: 2,
    )),
    floatingLabelStyle: TextStyle(
      color: AppColors.primaryColor,
    ),
  ),
);
