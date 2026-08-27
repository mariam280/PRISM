import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/analysis_result_item_card.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';

class AnalysisResultScreenContent extends StatelessWidget {
  const AnalysisResultScreenContent({super.key, required this.project});

  final RecentProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.file(
            File(project.image),
            fit: BoxFit.contain,
            width: double.infinity,
          ),
        ),
        Row(
          spacing: 10,
          children: [
            Expanded(
              child: AnalysisResultItemCard(
                title: 'Created',
                subTitle: DateFormat('M/d/yyyy').format(project.timeAgo),
              ),
            ),
            Expanded(
              child: AnalysisResultItemCard(
                title: 'Type',
                subTitle: project.subType,
              ),
            ),
            const Expanded(
              child: AnalysisResultItemCard(title: 'Status', subTitle: 'Ready'),
            ),
          ],
        ),
      ],
    );
  }
}