
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/features/onboarding/ui/screens/widgets/onboard_item.dart';

class OnboardItemPageView extends StatelessWidget {
  const OnboardItemPageView({
    super.key,
    required this.pageController, required this.onPageChanged,
  });
  final PageController pageController;
  final ValueChanged<int> onPageChanged;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: onPageChanged,
        children: [
          OnboardItem(
            image: Assets.imagesOnboard1,
            currentPageIndex: 0,
            title: 'Turn Screenshots Into Structure',
            description: 'Understand any interface with AI-powered UI\nanalysis.',
          ),
          OnboardItem(
            image: Assets.imagesOnboard2,
            currentPageIndex: 1,
            title: 'Discover the Design System',
            description: 'Extract colors, typography, spacing, and\ncomponents from a single screen.',
          ),
          OnboardItem(
            image: Assets.imagesOnboard3,
            currentPageIndex: 2,
            title: 'Build With Clarity',
            description: 'Get a structured blueprint you can actually work\nwith.',
          ),
        ]);
  }
}
