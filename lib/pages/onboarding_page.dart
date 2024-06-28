import 'package:flutter/material.dart';
import 'package:online_payment/pages/onboarding1_page.dart';
import 'package:online_payment/pages/onboarding2_page.dart';
import 'package:online_payment/pages/onboarding3_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _pageController = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.only(bottom: 80),
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  isLastPage = index == 2;
                });
              },
              children: [
                Onboarding1Page(
                  controller: _pageController,
                ),
                Onboarding2Page(
                  controller: _pageController,
                ),
                Onboarding3Page(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
