import 'package:flutter/material.dart';
import 'package:prism/features/onboarding/ui/screens/widgets/custom_dot.dart';


class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});

  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
