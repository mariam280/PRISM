import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({
    super.key,
    required this.title,
    required this.subtitle,
    required this.timeAgo,
    this.onTap, required this.image,
  });

  final String image;
  final String title;
  final String subtitle;
  final String timeAgo;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.cardsColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.borderColor, width: 1.115),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Image.asset(Assets.imagesBigCoverProject),
            const CustomSize(h: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.semiBoldInter13_2(context)
                  ),
                 const CustomSize(h: 3),
                  Text(
                    subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.regularInter11(context).copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const CustomSize(h: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                 "$timeAgo ago",
                  style: AppStyles.regularInter10(context)
                ),
                const SizedBox(height: 4),
               Container(
    width: 6,
    height: 6,
    decoration: ShapeDecoration(
        color: const Color(0xFF34D399),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        shadows: [
            BoxShadow(
                color: Color(0xFF34D399),
                blurRadius: 6,
                offset: Offset(0, 0),
                spreadRadius: 0,
            )
        ],
    ),
)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
