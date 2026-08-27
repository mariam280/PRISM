import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class AnalysisResultItemCard extends StatelessWidget {
  const AnalysisResultItemCard({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
      decoration: ShapeDecoration(
        color: AppColors.cardsColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.12, color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppStyles.regularInter10(context)),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 5,
            children: [
              if (subTitle == 'Ready')
                Container(
                  width: 5,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF34D399),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.50),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0xFF34D399),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
              Flexible(
                child: Text(
                  subTitle,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.semiBoldInter12_2(context),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
