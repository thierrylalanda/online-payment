import 'package:flutter/material.dart';

//Color(0xfffe6383)
class AppColors {
  static const Color primary = Color(0xFF0066FF);
  static const Color secondary = Color(0xFF1E1E2D);
  static const Color thirthy = Color.fromARGB(255, 255, 111, 159);
  static const Color lightGreen = Color(0xFF23CCB7);
  static const Color blackBlue = Color(0xFF0C3A5E);
  static const Color blue = Color(0xFF4F86FF);
  static const Color lightBlue = Color(0xFF4F86FF);
  static const Color buttonBordeColor = Color(0xFF4FA0FF);
  static const Color bordeColor = Color(0xFFD0D5DD);
  static const Color black = Color(0xFF1E1E1E);
  static const Color white = Color(0xFFFFFFFF);
  static const Color textGrey = Color(0xFF878787);
  static const Color blackText = Color(0xFF000000);
  static const Color textColor = Color(0xff667085);
  static const Color errorColor = Color(0xffED1A34);
  static const Color orange = Color(0xffF47A27);
  static const Color purple = Color(0xffA551FF);
  static const Color red = Color(0xffFE5151);
  static const Color gray = Color(0xffD9D9D9);

  static const Color menuBackground = Color(0xFF090912);
  static const Color itemsBackground = Color(0xFF1B2339);
  static const Color pageBackground = Color(0xFF282E45);
  static const Color mainTextColor1 = Colors.white;
  static const Color mainTextColor2 = Colors.white70;
  static const Color mainTextColor3 = Colors.white38;
  static const Color mainGridLineColor = Colors.white10;
  static const Color borderColor = Colors.white54;
  static const Color gridLinesColor = Color(0x11FFFFFF);

  static const Color contentColorBlack = Colors.black;
  static const Color contentColorWhite = Colors.white;
  static const Color contentColorBlue = Color(0xFF2196F3);
  static const Color contentColorYellow = Color(0xFFFFC300);
  static const Color contentColorOrange = Color(0xFFFF683B);
  static const Color contentColorGreen = Color(0xFF3BFF49);
  static const Color contentColorPurple = Color(0xFF6E1BFF);
  static const Color contentColorPink = Color(0xFFFF3AF2);
  static const Color contentColorRed = Color(0xFFE80054);
  static const Color contentColorCyan = Color(0xFF0066FF);

  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
