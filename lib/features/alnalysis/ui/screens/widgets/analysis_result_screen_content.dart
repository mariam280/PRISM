import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/analysis_result_item_card.dart';

class AnalysisResultScreenContent extends StatelessWidget {
  const AnalysisResultScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            Assets.imagesBigCoverProject,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Row(
          spacing: 10,
          children: [
            Expanded(
              child: AnalysisResultItemCard(
                title: 'Created',
                subTitle: 'Aug 12',
              ),
            ),
            Expanded(
              child: AnalysisResultItemCard(
                title: 'Type',
                subTitle: 'Dashboard',
              ),
            ),
            Expanded(
              child: AnalysisResultItemCard(title: 'Status', subTitle: 'Ready'),
            ),
          ],
        ),
      ],
    );
  }
}
