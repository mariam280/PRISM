import 'package:flutter/material.dart';
import 'package:prism/features/blueprint/ui/screens/widgets/blueprint_appBar.dart';

class BlueprintScreenBody extends StatelessWidget {
  const BlueprintScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BlueprintAppbar(
          title: 'E-commerce Home'),
      ],
    );
  }
}