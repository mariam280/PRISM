import 'package:flutter/material.dart';
import 'package:prism/features/onboarding/ui/screens/widgets/onboarding_screen_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnboardingScreenBody(),
      ),
    );
  }
}