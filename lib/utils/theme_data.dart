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
        onSurface: AppColors.secondary));
ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
