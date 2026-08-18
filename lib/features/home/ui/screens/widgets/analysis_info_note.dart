import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class AnalysisInfoNote extends StatelessWidget {
  const AnalysisInfoNote({super.key});

  @override
  Widget build(BuildContext context) {
    final baseStyle = AppStyles.regularInter12(context).copyWith(
      color: AppColors.grey,
      height: 1.6,
    );
    final emphasisStyle = AppStyles.mediumInter12(context).copyWith(
      color: AppColors.kWhite,
      height: 1.6,
    );

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      decoration: BoxDecoration(
        color: AppColors.purbleColor.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.purbleColor.withValues(alpha: 0.2),
          width: 1.115,
        ),
      ),
      child: RichText(
        text: TextSpan(
          style: baseStyle,
          children: [
            const TextSpan(text: 'PRISM will analyze '),
            TextSpan(
              text: 'layout, colors, typography, components,',
              style: emphasisStyle,
            ),
            const TextSpan(text: ' and '),
            TextSpan(text: 'visual hierarchy.', style: emphasisStyle),
          ],
        ),
      ),
    );
  }
}