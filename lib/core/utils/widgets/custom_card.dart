import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child, required this.title});
  final Widget child;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.semiBoldInter11(context)),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.cardsColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.borderColor, width: 1.115),
          ),
          child: child,
        ),
      ],
    );
  }
}
