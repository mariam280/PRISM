import 'package:flutter/material.dart';
import 'package:prism/core/helpers/demo_lists.dart/stats_list.dart';
import 'package:prism/features/overview/ui/screen/widgets/stat_card.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: statsList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2.2,
      ),
      itemBuilder: (context, index) {
        return StatCard(statModel: statsList[index]);
      },
    );
  }
}
