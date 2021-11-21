import 'package:eventsapp/resources/colors.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primaryColor,
  bottomAppBarTheme: const BottomAppBarTheme(
    color: AppColors.primaryColor,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: AppColors.primaryColor,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.primaryColor,
  ),
  inputDecorationTheme: const InputDecorationTheme(
      alignLabelWithHint: true,
      labelStyle: TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
      ),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        color: AppColors.primaryColor,
      ))),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primaryColor,
    actionsIconTheme: IconThemeData(color: AppColors.white),
  ),
);
