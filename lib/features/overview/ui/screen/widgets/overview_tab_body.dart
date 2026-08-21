import 'package:flutter/material.dart';
import 'package:prism/features/overview/ui/screen/widgets/overview_summary_card.dart';

class OverviewTabBody extends StatelessWidget {
  const OverviewTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.all(20),
      child: const Column(
        children: [
          BlueprintSummaryCard(
            description: 'E-commerce mobile home screen with a product-focused hierarchy and bottom navigation.',
          ),
        ],
      ),
    );
  }
}