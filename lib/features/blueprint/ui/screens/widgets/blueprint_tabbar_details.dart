import 'package:flutter/material.dart';
import 'package:prism/features/blueprint/ui/screens/widgets/blueprint_tabbar.dart';
import 'package:prism/features/components/ui/screens/component_tab_screen.dart';
import 'package:prism/features/design/ui/screens/design_tab_screen.dart';
import 'package:prism/features/layOutTab/ui/screens/layout_tab_screen.dart';
import 'package:prism/features/overview/ui/screen/overview_tab_screen.dart';

class BlueprintTabbarDetails extends StatefulWidget {
  const BlueprintTabbarDetails({super.key});

  @override
  State<BlueprintTabbarDetails> createState() => _BlueprintTabbarDetailsState();
}

class _BlueprintTabbarDetailsState extends State<BlueprintTabbarDetails> {
  String _selectedTab = 'Overview';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlueprintTabBar(
          selected: _selectedTab,
          onChanged: (tab) => setState(() => _selectedTab = tab),
        ),
        Expanded(
          child: switch (_selectedTab) {
            'Overview' => const OverviewTabScreen(),
            'Design' => const DesignTabScreen(),
            'Components' => const ComponentTabScreen(),
            'Layout' => const LayoutTabScreen(),
            _ => const SizedBox.shrink(),
          },
        ),
      ],
    );
  }
}