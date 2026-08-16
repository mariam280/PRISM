import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/features/onboarding/ui/screens/widgets/dots_indicator.dart';

class OnboardItem extends StatelessWidget {
  const OnboardItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.currentPageIndex,
  });
  final String image, title, description;
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image, fit: BoxFit.contain),
        DotsIndicator(currentPageIndex: currentPageIndex),
        Text(title, style: AppStyles.boldInter24(context)),
        Text(
          description,
          textAlign: TextAlign.start,
          style: AppStyles.regularInter14(context),
        ),
      ],
    );
  }
}
