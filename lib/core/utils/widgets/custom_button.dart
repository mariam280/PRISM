import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    this.buttonColor,
    this.textColor,
    this.borderColor,
    this.height,
    this.fontSize,
    this.leftImage,
    this.radius,
  });
  final VoidCallback? onTap;
  final String text;
  final Color? buttonColor, textColor;
  final String? leftImage;
  final BoxBorder? borderColor;
  final double? height, fontSize, radius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.purbleColor,
          borderRadius: BorderRadius.circular(radius ?? 12),
          border: borderColor ?? Border.all(color: AppColors.borderColor),
        ),
        height: height ?? 56,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              if (leftImage != null)
                Image.asset(
                  leftImage!,
                 // color: textColor,
                  width: 16,
                  height: 16,
                ),
              Text(
                text,
                style: AppStyles.semiBoldInter14_2(
                  context,
                ).copyWith(color: textColor ?? AppColors.kWhite2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
