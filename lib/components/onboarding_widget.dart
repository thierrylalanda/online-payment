import 'package:flutter/material.dart';
import 'package:online_payment/components/base_button_widget.dart';
import 'package:online_payment/utils/app_colors.dart';

class OnboardingWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const OnboardingWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(image),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        description,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
