import 'package:flutter/material.dart';
import 'package:prism/core/helpers/demo_lists.dart/structure_section_list.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/widgets/custom_card.dart';
import 'package:prism/features/overview/ui/screen/widgets/structure_item.dart';

class StructureSectionList extends StatelessWidget {
  const StructureSectionList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 8),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return StructureItem(label: lables[index]);
        },
        separatorBuilder: (_, _) =>
            Divider(thickness: 0.6, color: AppColors.borderColor),
        itemCount: lables.length,
      ),
    );
  }
}
