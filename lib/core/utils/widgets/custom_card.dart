import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child, this.onTap});
  final Widget child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.cardsColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.borderColor, width: 1.115),
            ),
            child: child,
      ),
    );
  }
}
