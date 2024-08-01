import 'package:flutter/material.dart';
import 'package:islami_project/home/app_colors.dart';

class MyThemeData {
  static final ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.primaryLightColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: AppColors.blackColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.primaryLightColor),
      textTheme: TextTheme(
          bodyLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            color: AppColors.blackColor),
        bodyMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        bodySmall: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor),
        titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor),
      ));
}
