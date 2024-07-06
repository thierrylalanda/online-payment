import 'package:flutter/material.dart';
import 'package:online_payment/components/onboarding_widget.dart';
import 'package:online_payment/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  static final _pageController = PageController(initialPage: 0);
  bool isLastPage = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<Widget> _onBoardingPages = [
    OnboardingWidget(
      image: "assets/onboarding1.jpeg",
      title: "Fastest Payment in the world",
      description:
          "Integrate multiple payment methoods to help you up the process quickly",
    ),
    OnboardingWidget(
      image: "assets/onboarding2.jpeg",
      title: "The most Secoure Platfrom for Customer",
      description:
          "Built-in Fingerprint, face recognition and more, keeping you completely safe",
    ),
    OnboardingWidget(
      image: "assets/onboarding3.jpeg",
      title: "Paying for Everything is Easy and Convenient",
      description:
          "Built-in Fingerprint, face recognition and more, keeping you completely safe",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      isLastPage = index == 2;
                    });
                  },
                  children: _onBoardingPages,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {
                      int previousPage = _pageController.page!.round();
                      if (previousPage > 0) {
                        _pageController.animateToPage(
                          _pageController.page!.round() - 1,
                          duration: Durations.long1,
                          curve: Curves.linear,
                        );
                      }
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Theme.of(context).colorScheme.primary,
                      dotColor: Theme.of(context).colorScheme.secondary,
                    ),
                    onDotClicked: (index) {
                      _pageController.animateToPage(
                        index,
                        duration: Durations.long1,
                        curve: Curves.linear,
                      );
                    },
                  ),
                  MaterialButton(
                    padding: EdgeInsets.all(2),
                    onPressed: () {
                      if (isLastPage) {
                        Navigator.popAndPushNamed(context, '/signin');
                      } else {
                        _pageController.animateToPage(
                          _pageController.page!.round() + 1,
                          duration: Durations.long1,
                          curve: Curves.linear,
                        );
                      }
                    },
                    child: isLastPage
                        ? Row(
                            children: [
                              Text(
                                'Sign In',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          )
                        : Icon(Icons.arrow_forward_ios),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
