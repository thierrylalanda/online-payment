import 'package:flutter/material.dart';
import 'package:online_payment/pages/add_card_page.dart';
import 'package:online_payment/pages/all_card_page.dart';
import 'package:online_payment/pages/change_password_page.dart';
import 'package:online_payment/pages/edit_profil_page.dart';
import 'package:online_payment/pages/home_page.dart';
import 'package:online_payment/pages/language_page.dart';
import 'package:online_payment/pages/onboarding1_page.dart';
import 'package:online_payment/pages/onboarding2_page.dart';
import 'package:online_payment/pages/onboarding3_page.dart';
import 'package:online_payment/pages/onboarding_page.dart';
import 'package:online_payment/pages/profil_page.dart';
import 'package:online_payment/pages/request_money_page.dart';
import 'package:online_payment/pages/search_page.dart';
import 'package:online_payment/pages/send_money_page.dart';
import 'package:online_payment/pages/sign_in_page.dart';
import 'package:online_payment/pages/sign_up_page.dart';
import 'package:online_payment/pages/term_condition_page.dart';
import 'package:online_payment/pages/transaction_history_page.dart';
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
        '/profil': (context) => const ProfilPage(),
        '/editprofil': (context) => const EditProfilPage(),
        '/allcard': (context) => const AllCardPage(),
        '/addcard': (context) => const AddCardPage(),
        '/history': (context) => const TransactionHistoryPage(),
        '/search': (context) => const SearchPage(),
        '/sendmoney': (context) => const SendMoneyPage(),
        '/requestmoney': (context) => const RequestMoneyPage(),
        '/changepassword': (context) => const ChangePasswordPage(),
        '/termcondition': (context) => const TermConditionPage(),
        '/language': (context) => const LanguagePage(),
      },
    );
  }
}
