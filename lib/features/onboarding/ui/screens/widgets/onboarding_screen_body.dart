import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/cache/get_storage_helper.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/features/onboarding/ui/screens/widgets/on_skip.dart';
import 'package:prism/features/onboarding/ui/screens/widgets/onboard_buttons.dart';
import 'package:prism/features/onboarding/ui/screens/widgets/onboard_item_page_view.dart';

class OnboardingScreenBody extends StatefulWidget {
  const OnboardingScreenBody({super.key});

  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

class _OnboardingScreenBodyState extends State<OnboardingScreenBody> {
  int currentPage = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentPage);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
      child: Column(
        children: [
          OnSkip(
            onSkip: () {
              GoRouter.of(context).go(AppRouters.welcome);
            },
          ),
          OnboardItemPageView(
            pageController: pageController,
            onPageChanged: (index) {
              setState(() => currentPage = index);
            },
          ),
          Spacer(),
          OnboardButtons(
            onTapBack: () {
              pageController.animateToPage(
                currentPage - 1,
                duration: Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
            onTapNext: () async {
              if (currentPage == 2) {
                await GetStorageHelper.setGetStorageData(
                  key: dotenv.env['Has_Seen_Onboarding']!,
                  value: true,
                );
                GoRouter.of(context).go(AppRouters.welcome);
              } else {
                pageController.animateToPage(
                  currentPage + 1,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              }
            },
            next: currentPage == 2 ? 'Get Started' : 'Next',
            back: currentPage == 0 ? '' : 'Back',
          ),
        ],
      ),
    );
  }
}
