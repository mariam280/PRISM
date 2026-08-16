import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 20 : 6,
      height: 3,
      decoration: ShapeDecoration(
        color: isActive ? AppColors.purbleColor : AppColors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(99),
        ),
      ),
    );
  }
}
