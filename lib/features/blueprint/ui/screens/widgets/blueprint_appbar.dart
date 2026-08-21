import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class BlueprintAppbar extends StatelessWidget {
  const BlueprintAppbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 28, bottom: 20),
      child: Row(
        spacing: 12,
        children: [
          GestureDetector(
            onTap: () {
              GoRouter.of(context).go(AppRouters.analysisResult);
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppStyles.boldInter17(context)),
              Text(
                'Generated just now',
                style: AppStyles.regularInter11(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
