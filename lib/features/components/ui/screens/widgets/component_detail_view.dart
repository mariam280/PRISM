import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/widgets/appbar_header.dart';
import 'package:prism/core/utils/widgets/custom_card.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/components/data/models/component_model.dart';
import 'package:prism/features/components/ui/screens/widgets/outlined_button_widget.dart';
import 'package:prism/features/components/ui/screens/widgets/spec_row.dart';
import 'package:prism/features/design/ui/screens/widgets/detection_badge.dart';
import 'package:prism/features/components/ui/screens/widgets/component_preview.dart';

class ComponentDetailView extends StatelessWidget {
  const ComponentDetailView({
    super.key,
    required this.componentModel,
    required this.onBack,
  });

  final ComponentModel componentModel;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(child: AppbarHeader(title: componentModel.name, onTap: onBack)),
              DetectionBadge(isAiDetected: componentModel.isAiDetected),
            ],
          ),
          const CustomSize(h: 20),
          CustomCard(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ComponentPreview(
                componentModel: componentModel,
                height: 120,
              ),
            ),
          ),
          const CustomSize(h: 16),
          CustomCard(
            child: Column(
              children: [
                for (var i = 0; i < componentModel.specs.length; i++) ...[
                  SpecRow(specModel: componentModel.specs[i]),
                  if (i != componentModel.specs.length - 1)
                    const Divider(
                      height: 1,
                      thickness: 1,
                      color: AppColors.borderColor,
                    ),
                ],
              ],
            ),
          ),
          const CustomSize(h: 14),
          OutlinedButtonWidget(componentModel: componentModel),
        ],
      ),
    );
  }
}
