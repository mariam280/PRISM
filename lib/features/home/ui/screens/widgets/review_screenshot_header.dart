import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class ReviewScreenshotHeader extends StatelessWidget {
  const ReviewScreenshotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          spacing: 10,
          children: [
            GestureDetector(
              onTap: () => GoRouter.of(context).pop(),
              child: Container(
                width: 34,
                height: 34,
                decoration: ShapeDecoration(
                  color: AppColors.cardsColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.12, color: AppColors.borderColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: AppColors.kWhite2,
                  size: 16,
                ),
              ),
            ),
            Text('Review Screenshot', style: AppStyles.boldInter17(context)),
          ],
        ),
      ],
    );
  }
}
