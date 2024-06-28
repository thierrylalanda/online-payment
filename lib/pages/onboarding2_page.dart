import 'package:flutter/material.dart';
import 'package:online_payment/utils/app_colors.dart';

class Onboarding2Page extends StatelessWidget {
  Onboarding2Page({super.key, required this.controller});
  final PageController controller;
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
                      Image.asset('assets/onboarding2.jpeg'),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                color: AppColors.primary.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 5,
                            width: 18,
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                color: AppColors.primary.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'The most Secoure Platfrom for Customer',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Built-in Fingerprint, face recognition and more, keeping you completely safe',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.popAndPushNamed(context, '/onboarding3'),
                    controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOut);
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    child: Center(
                        child: Text('NEXT',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
