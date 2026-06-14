import 'package:awzany/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/constrants/app_colors.dart';
import '../../../../core/constrants/app_strings.dart';
import '../../../../core/themes/text_styles.dart';
import '../../../../shared/app_buttom.dart';
import 'onboarding_model.dart';


class OnboardingPage extends StatelessWidget {
  final OnboardingModel item;
  final bool isLast;
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final PageController controller;

  const OnboardingPage({
    super.key,
    required this.item,
    required this.isLast,
    required this.onNext,
    required this.onSkip,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        /// Background Image
        Image.asset(item.image, fit: BoxFit.cover),

        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: onSkip,
                    child: Text(
                      AppStrings.skip,
                      style: TextStyles.font16WhiteRegular,
                    ),
                  ),
                ),

                const Spacer(),

                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                      activeDotColor: AppColors.primary,
                      dotColor: AppColors.primary.withValues(alpha: 0.15),
                      dotHeight: 6, dotWidth: 50,
                      expansionFactor:1.5
                  ),
                ),

                verticalSpace(16),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item.title,
                    style:  TextStyles.font28PrimaryBold
                  ),
                ),

                verticalSpace(24),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item.description,
                    style: TextStyles.font16WhiteRegular,
                  ),
                ),

                verticalSpace(57),

                AppButton(
                  text: isLast ? AppStrings.getStarted : AppStrings.next,
                  onTap: isLast ? onNext : onNext,
                ),

                verticalSpace(60),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
