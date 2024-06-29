import 'package:flutter/material.dart';
import 'package:online_payment/utils/app_colors.dart';

class BaseButtonWidget extends StatelessWidget {
  const BaseButtonWidget({super.key, required this.text, this.onTap});
  final Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12),
        width: double.infinity,
        height: 60,
        child: Center(
            child: Text(
          text,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
