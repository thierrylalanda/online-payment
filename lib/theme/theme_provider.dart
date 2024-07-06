import 'package:flutter/material.dart';
import 'package:online_payment/theme/theme_data.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeMode = lightTheme;

  bool get isDarkMode => _themeMode == darkTheme;
  bool get isLightMode => _themeMode == lightTheme;
  ThemeData get themeMode => _themeMode;

  set themeMode(ThemeData mode) {
    _themeMode = mode;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeMode == lightTheme) {
      themeMode = darkTheme;
    } else {
      themeMode = lightTheme;
    }
  }
}
