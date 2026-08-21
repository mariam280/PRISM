import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/overview/ui/screen/widgets/overview_summary_card.dart';
import 'package:prism/features/overview/ui/screen/widgets/stats_grid.dart';
import 'package:prism/features/overview/ui/screen/widgets/structure_section_list.dart';

class OverviewTabBody extends StatelessWidget {
  const OverviewTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BlueprintSummaryCard(
              description:
                  'E-commerce mobile home screen with a product-focused hierarchy and bottom navigation.',
            ),
            const CustomSize(h: 20),
            const StatsGrid(),
            const CustomSize(h: 24),
            Text(
              'Screen Structure',
              style: AppStyles.semiBoldInter13_2(context),
            ),
            const CustomSize(h: 12),
            const StructureSectionList(),
          ],
        ),
      ),
    );
  }
}
