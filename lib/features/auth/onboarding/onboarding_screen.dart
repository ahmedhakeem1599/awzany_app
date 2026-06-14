import 'package:awzany/features/auth/onboarding/widget/onboarding_model.dart';
import 'package:awzany/features/auth/onboarding/widget/onboarding_page.dart';
import 'package:flutter/material.dart';
import '../../../core/constrants/app_assets.dart';
import '../../../core/constrants/app_strings.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final PageController _controller = PageController();
  int currentPage = 0;

  final pages = [
    OnboardingModel(
      image: AppAssets.onboardingOne,
      title: AppStrings.titleOne,
      description:AppStrings.descOne,
    ),

    const OnboardingModel(
      image: AppAssets.onboardingTwo,
      title: AppStrings.titleTwo,
      description: AppStrings.descTwo
    ),

    const OnboardingModel(
      image: AppAssets.onboardingThree,
      title: AppStrings.titleThree,
      description: AppStrings.descThree
    ),
  ];

  void nextPage() {
    if (currentPage == pages.length - 1) {

      /// Navigate Login

      return;
    }

    _controller.nextPage(
      duration: const Duration(milliseconds: 5),
      curve: Curves.easeInOut,
    );
  }

  void getStarted() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        controller: _controller,
        itemCount: pages.length,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        itemBuilder: (_, index) {
          return OnboardingPage(
            item: pages[index],
            controller: _controller,
            isLast: index == pages.length - 1,
            onNext: nextPage,
            onSkip: getStarted,
          );
        },
      ),
    );
  }
}