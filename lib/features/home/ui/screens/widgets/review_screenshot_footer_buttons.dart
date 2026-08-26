import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/widgets/custom_button.dart';
import 'package:prism/core/utils/widgets/size.dart';

class ReviewScreenshotFooterButtons extends StatelessWidget {
  const ReviewScreenshotFooterButtons({
    super.key,
    this.onTapAnalysis, this.onTapChangePhoto,
  });
  final Function()? onTapAnalysis, onTapChangePhoto;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        CustomButton(onTap: onTapAnalysis, text: 'Analyze Screenshot'),
        CustomButton(
          onTap: onTapChangePhoto,
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
