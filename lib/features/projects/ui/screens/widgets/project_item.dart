import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, this.onTap, required this.projectModel});
  final RecentProjectModel projectModel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.cardsColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.borderColor, width: 1.115),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(aspectRatio: 1, child: Image.asset(projectModel.image)),
            const CustomSize(h: 10),
            Text(
              projectModel.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.semiBoldInter12_2(context),
            ),
            const CustomSize(h: 3),
            Text(
              projectModel.subType,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.regularInter10(context),
            ),
            const CustomSize(h: 2),
            Text(
              DateFormat('M/d/yyyy').format(projectModel.timeAgo),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.regularInter10(context),
            ),
          ],
        ),
      ),
    );
  }
}
