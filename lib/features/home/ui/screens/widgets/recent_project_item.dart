import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';

class RecentProjectItem extends StatelessWidget {
  const RecentProjectItem({super.key, this.onTap, required this.recentProject});

  final RecentProjectModel recentProject;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
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
              Image.asset(recentProject.image, width: 44, height: 44),
              const CustomSize(w: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recentProject.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.semiBoldInter13_2(context),
                    ),
                    const CustomSize(h: 3),
                    Text(
                      "${recentProject.type} . ${recentProject.subType}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.regularInter11(
                        context,
                      ).copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
              ),
              const CustomSize(h: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "${recentProject.timeAgo.difference(DateTime.now()).inHours.abs()} ago",
                    style: AppStyles.regularInter10(context),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF34D399),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0xFF34D399),
                          blurRadius: 6,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
