import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    this.child,
    this.cardColor,
    this.radius,
    this.borderColor,
  });
  final Widget? child;
  final Color? cardColor;
  final double? radius;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor ?? AppColors.cardsColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor ?? AppColors.borderColor),
        borderRadius: BorderRadius.circular(radius ?? 12),
      ),
      child: child,
    );
  }
}
