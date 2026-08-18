import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/widgets/custom_button.dart';
import 'package:prism/core/utils/widgets/size.dart';

class ReviewScreenshotFooterButtons extends StatelessWidget {
  const ReviewScreenshotFooterButtons({
    super.key,
    this.onTapAnalysis,
  });
  final Function()? onTapAnalysis;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        CustomButton(onTap: onTapAnalysis, text: 'Analyze Screenshot'),
        CustomButton(
          onTap: ()=> GoRouter.of(context).pop(),
          text: 'Replace Image',
          textColor: AppColors.kWhite,
          borderColor: Border.all(color: AppColors.grey.withAlpha(90)),
          buttonColor: AppColors.transparent,
        ),
        const CustomSize(h: 4),
      ],
    );
  }
}
