import 'package:flutter/material.dart';
import 'package:online_payment/components/bottom_nav_bar.dart';
import 'package:online_payment/components/cart_widget.dart';
import 'package:online_payment/components/transaction_item.dart';
import 'package:online_payment/pages/card_page.dart';
import 'package:online_payment/pages/dashboard_page.dart';
import 'package:online_payment/pages/settings_page.dart';
import 'package:online_payment/pages/statistic_page.dart';
import 'package:online_payment/utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //page to display
  List<Widget> _pages = <Widget>[
    const Dashboard(),
    CardPage(),
    StatisticPage(),
    SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
    );
  }
}
