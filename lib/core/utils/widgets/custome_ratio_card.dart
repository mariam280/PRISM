import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';

class CustomRatioCard extends StatelessWidget {
  const CustomRatioCard({super.key, required this.aspectRatio, this.child, this.cardColor,this.borderRadius, this.borderColor});
  final double aspectRatio;
  final Widget? child;
  final Color? cardColor, borderColor;
  final double? borderRadius ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Card(
        color: cardColor??AppColors.cardsColor,
       shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor ?? AppColors.borderColor),
        borderRadius: BorderRadius.circular(borderRadius ?? 12),),
        child: child,
      ),
    );
  }
}