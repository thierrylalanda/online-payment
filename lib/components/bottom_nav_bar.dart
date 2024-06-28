import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:online_payment/utils/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key, required this.onTabChange});
  void Function(int) onTabChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: GNav(
        onTabChange: onTabChange,
        color: Colors.grey[400],
        activeColor: AppColors.createMaterialColor(AppColors.primary),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBackgroundColor:
            Color(0xFF0066FF).withOpacity(0.2), // selected tab background color
        padding: EdgeInsets.symmetric(
            horizontal: 20, vertical: 5), // navigation bar padding
        gap: 5,
        style: GnavStyle.google,
        curve: Curves.easeIn,

        haptic: true, // haptic feedback
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
            iconActiveColor: AppColors.createMaterialColor(AppColors.orange),
          ),
          GButton(
            icon: Icons.account_balance_wallet,
            text: "My Wallet",
            iconActiveColor: AppColors.createMaterialColor(AppColors.orange),
          ),
          GButton(
            icon: Icons.graphic_eq,
            text: "Statistics",
            iconActiveColor: AppColors.createMaterialColor(AppColors.orange),
          ),
          GButton(
            icon: Icons.settings,
            text: "Settings",
            iconActiveColor: AppColors.createMaterialColor(AppColors.orange),
          ),
        ],
      ),
    );
  }
}
