import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/custom_card.dart';
import 'package:prism/features/overview/data/models/stat_item_model.dart';

class StatCard extends StatelessWidget {
  const StatCard({super.key, required this.statModel});

  final StatItemModel statModel;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${statModel.value}',
            style: AppStyles.boldInter22(context).copyWith(
              color: AppColors.kWhite,
              letterSpacing: -0.44,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            statModel.label,
            style: AppStyles.regularInter11(context).copyWith(
              color: AppColors.grey,
            ),
          ),
        ],
      ),)
    );
  }
}