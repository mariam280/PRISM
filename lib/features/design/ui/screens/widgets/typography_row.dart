
import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/custom_card.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/design/data/models/typography_spec_model.dart';
import 'package:prism/features/design/ui/screens/widgets/detection_badge.dart';

class TypographyRow extends StatelessWidget {
  const TypographyRow({super.key, required this.specModel});

  final TypographySpecModel specModel;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    specModel.label,
                    style: AppStyles.semiBoldInter13_2(context)
                  ),
                ),
                DetectionBadge(isAiDetected: specModel.isAiDetected),
              ],
            ),
            const CustomSize(h: 4),
            Text(
              specModel.spec,
              style: AppStyles.regularInter12(context)
            ),
          ],
        ),
      ),
    );
  }
}