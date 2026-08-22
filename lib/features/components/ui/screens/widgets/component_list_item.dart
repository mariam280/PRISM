import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/custom_card.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/components/data/models/component_model.dart';
import 'package:prism/features/design/ui/screens/widgets/detection_badge.dart';
import 'package:prism/features/components/ui/screens/widgets/component_preview.dart';

class ComponentListItem extends StatelessWidget {
  const ComponentListItem({
    super.key,
    required this.componentModel,
    required this.onTap,
  });

  final ComponentModel componentModel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ComponentPreview(componentModel: componentModel),
            const CustomSize(h: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        componentModel.name,
                        style: AppStyles.semiBoldInter13_2(context)
                      ),
                      const CustomSize(h: 2),
                      Text(
                        componentModel.subtitleType,
                        style: AppStyles.regularInter11(context)
                      ),
                    ],
                  ),
                ),
                DetectionBadge(
                  isAiDetected: componentModel.isAiDetected,
                  compact: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}