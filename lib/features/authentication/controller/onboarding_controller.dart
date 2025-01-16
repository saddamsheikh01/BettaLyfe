import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index When Page Scroll
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  /// Jump to the specific dot-selected page.
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update Current Index & jump to the next page
  void onNextPage() {
    if (currentPageIndex.value < 4) { // Ensure you only navigate if not on the last page
      int nextPage = currentPageIndex.value + 1;
      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      currentPageIndex.value = nextPage;
    } else {
      // Handle the case when it's the last page
      // Navigate to another screen or complete onboarding
    }
  }

  /// Update Current Index & jump to the previous page
  void onBackPage() {
    if (currentPageIndex.value > 0) { // Ensure back navigation only if not on the first page
      int backPage = currentPageIndex.value - 1;
      pageController.animateToPage(
        backPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      currentPageIndex.value = backPage;
    }
  }

  /// Update Current index & jump to last page
  void skipPage() {
    currentPageIndex.value = 4; // Skip to the last page (index 4)
    pageController.jumpToPage(4);
  }
}
