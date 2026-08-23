import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/custom_card.dart';
import 'package:prism/core/utils/widgets/size.dart';

class SpacingChip extends StatelessWidget {
  const SpacingChip({super.key, required this.value, required this.maxValue});

  final int value;
  final int maxValue;

  @override
  Widget build(BuildContext context) {
    final lineThickness = 2 + (value / maxValue) * 4;

    return CustomCard(
      //radius: 12,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Container(
              width: 24,
              height: lineThickness,
              decoration: BoxDecoration(
                color: AppColors.purbleColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const CustomSize(h: 10),
            Text(
              '$value',
              style: AppStyles.semiBoldInter13(
                context,
              ).copyWith(color: AppColors.kWhite),
            ),
          ],
        ),
      ),
    );
  }
}