import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class AppearanceHeader extends StatelessWidget {
  const AppearanceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pop();
          },
          child: Container(
            width: 34,
            height: 34,
            decoration: ShapeDecoration(
              color: AppColors.cardsColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.12, color: const Color(0xFF29292F)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Icon(Icons.arrow_back, size: 16, color: AppColors.kWhite2),
          ),
        ),
        Text('Settings', style: AppStyles.boldInter17(context)),
      ],
    );
  }
}
