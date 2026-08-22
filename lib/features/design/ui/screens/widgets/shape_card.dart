
import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/custom_card.dart';
import 'package:prism/core/utils/widgets/size.dart';

class ShapeCard extends StatelessWidget {
  const ShapeCard({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: AppStyles.regularInter12(context)
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: AppStyles.semiBoldInter13_2(context)
            ),
            const CustomSize(h: 4),
            Text(
              'Estimated',
              style: AppStyles.regularInter11(context)
            ),
          ],
        ),
      ),
    );
  }
}