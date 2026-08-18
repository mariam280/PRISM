import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class UploadImageHeader extends StatelessWidget {
  const UploadImageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          spacing:10,
          children: [
            Container(
        width: 34,
        height: 34,
        decoration: ShapeDecoration(
            color: AppColors.cardsColor,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 1.12,
                    color: AppColors.borderColor,
                ),
                borderRadius: BorderRadius.circular(10),
            ),
        ),
        child: Icon(
            Icons.arrow_back,
            color: AppColors.kWhite2,
            size: 16,
        ),
        ),
        Text('Create a Blueprint', style: AppStyles.boldInter17(context)),
          ],
        ),
        Text('Start with a screenshot. PRISM will uncover the design system behind it.',
        style: AppStyles.regularInter14(context),
        ),
      ],
    );
  }
}