import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/analysis_item_card.dart';

class AnalysisScreenContent extends StatelessWidget {
  const AnalysisScreenContent({super.key});

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
              child: AnalysisItemCard(title: 'Created', subTitle: 'Aug 12'),
            ),
            Expanded(
              child: AnalysisItemCard(title: 'Type', subTitle: 'Dashboard'),
            ),
            Expanded(
              child: AnalysisItemCard(title: 'Status', subTitle: 'Ready'),
            ),
          ],
        ),
      ],
    );
  }
}
