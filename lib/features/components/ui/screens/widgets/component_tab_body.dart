import 'package:flutter/material.dart';
import 'package:prism/core/helpers/demo_lists.dart/dummy_components_list.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/components/data/models/component_model.dart';
import 'package:prism/features/components/ui/screens/widgets/component_detail_view.dart';
import 'package:prism/features/components/ui/screens/widgets/component_list_item.dart';

class ComponentTabBody extends StatefulWidget {
  const ComponentTabBody({super.key});

  @override
  State<ComponentTabBody> createState() => _ComponentTabBodyState();
}

class _ComponentTabBodyState extends State<ComponentTabBody> {
  ComponentModel? _selected;


  @override
  Widget build(BuildContext context) {
    if (_selected != null) {
      return ComponentDetailView(
        componentModel: _selected!,
        onBack: () => setState(() => _selected = null),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
      children: [
        Text(
          'UI elements PRISM detected in this screen.',
          style: AppStyles.regularInter12(context).copyWith(
            color: AppColors.grey,
          ),
        ),
        const CustomSize(h: 18),
        for (var i = 0; i < dummyComponentsList.length; i++) ...[
          if (i != 0) const CustomSize(h: 10),
          ComponentListItem(
            componentModel: dummyComponentsList[i],
            onTap: () => setState(() => _selected = dummyComponentsList[i]),
          ),
        ],
      ],
      ),
    );
  }
}