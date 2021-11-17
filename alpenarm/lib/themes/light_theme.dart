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
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) =>
            states.contains(MaterialState.pressed)
                ? AppColors.primaryColor
                : AppColors.white),
        foregroundColor: MaterialStateProperty.resolveWith((states) =>
            states.contains(MaterialState.pressed)
                ? AppColors.white
                : AppColors.primaryColor),
        fixedSize: MaterialStateProperty.all(Size(double.maxFinite, 48)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        side: MaterialStateProperty.all(BorderSide(
          width: 2.0,
          color: AppColors.primaryColor,
          style: BorderStyle.solid,
        )),
        textStyle: MaterialStateProperty.all<TextStyle?>(
          TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: MaterialStateProperty.resolveWith(
            (Set<MaterialState> states) =>
                (states.contains(MaterialState.pressed) ? 8.0 : 0.0))),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size(double.maxFinite, 48)),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.primaryColor)),
  ),
);
