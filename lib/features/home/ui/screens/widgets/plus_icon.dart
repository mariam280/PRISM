import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class PlusIcon extends StatelessWidget {
  const PlusIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.purbleColor.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.purbleColor.withValues(alpha: 0.3),
          width: 1.115,
        ),
      ),
      child: Text(
        '+',
        style: AppStyles.regularInter16(context).copyWith(
          color: AppColors.kWhite,
          height: 1.5,
          fontSize: 22
        ),
      ),
    );
  }
}