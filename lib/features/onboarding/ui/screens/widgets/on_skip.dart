import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/widgets/custom_text_button.dart';

class OnSkip extends StatelessWidget {
  const OnSkip({super.key, required this.onSkip});
  final VoidCallback onSkip;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(top: 20, right: 24),
        child: CustomTextButton(
          onPressed: onSkip,
          text: 'Skip',
          textColor: AppColors.grey,
        ),
      ),
    );
  }
}
