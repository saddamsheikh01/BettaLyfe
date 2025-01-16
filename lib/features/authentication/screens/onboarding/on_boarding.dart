


import 'package:bettalyfa/features/authentication/controller/onboarding_controller.dart';
import 'package:bettalyfa/features/authentication/screens/onboarding/widgets/onboarding_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: const [
          // Screen 1
          OnBoardingContent(
            image: BImages.onBoardingImage1,
            logo: BImages.onBoardingImageLog1,
            title: BText.onBoardingTitle1,
            subtitle: BText.onBoardingSubTitle1,
          ),
          // Screen 2
          OnBoardingContent(
            image: BImages.onBoardingImage2,
            logo: BImages.onBoardingImageLog1,
            title: BText.onBoardingTitle2,
            subtitle: BText.onBoardingSubTitle2,
          ),
          // Screen 3
          OnBoardingContent(
            image: BImages.onBoardingImage3,
            logo: BImages.onBoardingImageLog1,
            title: BText.onBoardingTitle3,
            subtitle: BText.onBoardingSubTitle3,
          ),
          // Screen 4
          OnBoardingContent(
            image: BImages.onBoardingImage4,
            logo: BImages.onBoardingImageLog1,
            title: BText.onBoardingTitle4,
            subtitle: BText.onBoardingSubTitle4,
          ),
          // Screen 5
          OnBoardingContent(
            image: BImages.onBoardingImage5,
            logo: BImages.onBoardingImageLog1,
            title: BText.onBoardingTitle5,
            subtitle: BText.onBoardingSubTitle5,
          ),
        ],
      ),
    );
  }
}
