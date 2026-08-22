import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class DetectionBadge extends StatelessWidget {
  const DetectionBadge({super.key, required this.isAiDetected,  this.compact = false});

  final bool isAiDetected;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isAiDetected
            ? AppColors.purbleColor.withValues(alpha: 0.15)
            :  AppColors.verydarkGrey.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        isAiDetected ? (compact ? 'AI' : 'AI detected') : 'Estimated',
        style: AppStyles.mediumInter10(context).copyWith(
          color: isAiDetected ? AppColors.purbleColor : AppColors.grey,
        ),
      ),
    );
  }
}