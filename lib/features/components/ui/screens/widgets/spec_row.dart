
import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/features/components/data/models/component_spec_model.dart';

class SpecRow extends StatelessWidget {
  const SpecRow({super.key, required this.specModel});

  final ComponentSpecModel specModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            specModel.label,
            style: AppStyles.regularInter12(context)
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: specModel.value,
                  style: AppStyles.semiBoldInter12_2(context)
                ),
                if (specModel.isEstimated)
                  TextSpan(
                    text: ' · Est.',
                    style: AppStyles.regularInter10(context).copyWith(
                      color: AppColors.grey,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}