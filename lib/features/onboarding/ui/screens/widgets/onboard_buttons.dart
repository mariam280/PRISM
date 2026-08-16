import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/widgets/custom_button.dart';

class OnboardButtons extends StatelessWidget {
  const OnboardButtons({
    super.key,
    required this.back,
    required this.next,
    this.onTapNext,
    this.onTapBack,
  });
  final String back;
  final String next;
  final Function()? onTapNext;
  final Function()? onTapBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        if (back.isNotEmpty)
          Expanded(
            flex: 1,
            child: CustomButton(
              onTap: onTapBack,
              text: back,
              textColor: AppColors.grey,
              buttonColor: AppColors.transparent,
            ),
          ),
        Expanded(
          flex: 3,
          child: CustomButton(
            onTap: onTapNext,
            text: next,
            textColor: AppColors.kWhite,
            borderColor: Border.all(color: AppColors.transparent),
          ),
        ),
      ],
    );
  }
}
