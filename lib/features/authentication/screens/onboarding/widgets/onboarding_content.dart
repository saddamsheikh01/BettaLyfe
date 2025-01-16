import 'package:bettalyfa/features/authentication/controller/onboarding_controller.dart';
import 'package:bettalyfa/features/authentication/screens/onboarding/widgets/next_button.dart';
import 'package:bettalyfa/features/authentication/screens/onboarding/widgets/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';



class OnBoardingContent extends StatelessWidget {
  final String image;
  final String logo;
  final String title;
  final String subtitle;

  const OnBoardingContent({
    Key? key,
    required this.image,
    required this.logo,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Stack(
      children: [
        // Background Image
        Positioned.fill(
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),

        // Logo Image
        Positioned(
          top: 35,
          left: 80,
          right: 80,
          child: Image(
            image: AssetImage(logo),
          ),
        ),
        // Dots Navigation (Optional if you want navigation dots)
        const Positioned(
          top: 125,
          left: 0,
          right: 0,
          child: OnBoardingDotNavigation(),
        ),
        // Title, Description, and Button
        Positioned(
          bottom: 80,
          left: 24,
          right: 24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title Text
              Text(
                title,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItem),
              // Description Text
              Text(
                subtitle,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 40),
              // Next Button
              const OnBoardingNextButton(),
            ],
          ),
        ),
        if(controller.currentPageIndex>0)Positioned(
          top: 80,
          left: 16,
          child: SizedBox(
            width: 40,
            height: 40,
            child: ElevatedButton(
              onPressed: () => controller.onBackPage(), // Replace with the correct destination widget
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.white24,
                padding: const EdgeInsets.all(1),
              ),
              child: const Icon(
                Iconsax.arrow_left,
                color: Colors.white,
              ),
            ),
          ),
        ),

      ],
    );
  }
}
