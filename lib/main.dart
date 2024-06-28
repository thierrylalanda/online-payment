import 'package:flutter/material.dart';
import 'package:online_payment/pages/home_page.dart';
import 'package:online_payment/pages/onboarding1_page.dart';
import 'package:online_payment/pages/onboarding2_page.dart';
import 'package:online_payment/pages/onboarding3_page.dart';
import 'package:online_payment/pages/onboarding_page.dart';
import 'package:online_payment/pages/sign_in_page.dart';
import 'package:online_payment/pages/sign_up_page.dart';
import 'package:online_payment/utils/app_colors.dart';
import 'package:online_payment/utils/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme,
      theme: lightTheme,
      home: const OnboardingPage(),
      routes: {
        '/signin': (context) => const SignInPage(),
        '/signup': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
