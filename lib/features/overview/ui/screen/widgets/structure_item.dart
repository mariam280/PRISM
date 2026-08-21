import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';

class StructureItem extends StatelessWidget {
  const StructureItem({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: Row(
        spacing: 6,
        children: [
          Opacity(
            opacity: 0.7,
            child: Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                color: AppColors.purbleColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const CustomSize(h: 10),
          Expanded(
            child: Text(label, style: AppStyles.mediumInter13_2(context)),
          ),
          Text(
            '→',
            style: AppStyles.regularInter11(
              context,
            ).copyWith(color: AppColors.grey),
          ),
        ],
      ),
    );
  }
}
