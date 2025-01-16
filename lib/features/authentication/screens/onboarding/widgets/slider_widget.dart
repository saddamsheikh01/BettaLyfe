import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../controller/onboarding_controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Align(
      alignment: Alignment.topCenter,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 5,
        effect:  const ExpandingDotsEffect(
          activeDotColor: BColors.primary,
          dotHeight: 3,
          dotWidth: 45, // Width for inactive dots
          expansionFactor: 1.1, // 30 / 24 = 1.25 for active dot width of 30
          spacing: 15,  // Spacing between dots
        ),
      ),
    );
  }
}
