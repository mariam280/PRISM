import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/widgets/custom_card.dart';
import 'package:prism/features/overview/ui/screen/widgets/structure_item.dart';

class StructureSectionList extends StatelessWidget {
  const StructureSectionList({super.key, required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return StructureItem(label: items[index]);
        },
        separatorBuilder: (_, __) =>
            Divider(thickness: 0.6, color: AppColors.borderColor),
        itemCount: items.length,
      ),
    );
  }
}