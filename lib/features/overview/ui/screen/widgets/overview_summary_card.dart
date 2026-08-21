import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/custom_card.dart';

class BlueprintSummaryCard extends StatelessWidget {
  const BlueprintSummaryCard({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'UI BLUEPRINT',
            style: AppStyles.semiBoldInter12_3(context)
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: AppStyles.regularInter13(context).copyWith(
              color: AppColors.grey,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}