import 'package:flutter/material.dart';
import 'package:prism/core/utils/widgets/custom_background.dart';
import 'package:prism/features/components/ui/screens/widgets/component_tab_body.dart';

class ComponentTabScreen extends StatelessWidget {
  const ComponentTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: SafeArea(child: ComponentTabBody()),
    );
  }
}