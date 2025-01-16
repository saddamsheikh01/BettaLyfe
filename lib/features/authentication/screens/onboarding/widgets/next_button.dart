import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart'; // Assuming BColors.primary is defined here
import '../../../../../utils/constants/sizes.dart';
import '../../../controller/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Call the method to move to the next page
       final onBoardCtr = OnBoardingController.instance;
       onBoardCtr.onNextPage();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: BColors.primary, // Set background color to BColors.primary
        minimumSize: const Size(double.infinity, 50), // Full-width button
        shape: const RoundedRectangleBorder( // Rounded button (similar to circle but extends across the width)
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        padding: const EdgeInsets.all(12), // Adjust padding if needed
      ),
      child: const Text(

        'Next', // Button text
        style: TextStyle(
          color: Colors.white, // Text color
          fontSize: 18, // Font size
          fontWeight: FontWeight.bold, // Bold text style
        ),
      ),
    );
  }
}
