import 'package:flutter/material.dart';
import 'package:prism/features/blueprint/ui/screens/widgets/blueprint_appBar.dart';
import 'package:prism/features/blueprint/ui/screens/widgets/blueprint_tabbar_details.dart';

class BlueprintScreenBody extends StatelessWidget {
  const BlueprintScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 20,
      children: [
        BlueprintAppbar(title: 'E-commerce Home'),
        Expanded(child: BlueprintTabbarDetails()),
      ],
    );
  }
}
