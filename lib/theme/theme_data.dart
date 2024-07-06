import 'package:flutter/material.dart';
import 'package:online_payment/utils/app_colors.dart';

ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.createMaterialColor(AppColors.primary),
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondary,
      error: AppColors.errorColor,
      onError: AppColors.errorColor,
      background: Color(0xFFF5F5F5),
      onBackground: Color(0xFFF5F5F5),
      surface: AppColors.secondary,
      inversePrimary: AppColors.secondary,
      onSurface: AppColors.secondary,
    ));
ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primary,
      onPrimary: AppColors.createMaterialColor(AppColors.primary),
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondary,
      error: AppColors.errorColor,
      onError: AppColors.errorColor,
      background: AppColors.secondary,
      onBackground: Color(0xFFF5F5F5),
      surface: Color(0xFFF5F5F5),
      inversePrimary: Color(0xFFF5F5F5),
      onSurface: AppColors.white,
    ));
