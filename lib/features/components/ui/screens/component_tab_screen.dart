import 'package:flutter/material.dart';
import 'package:prism/features/components/ui/screens/widgets/component_tab_body.dart';

class ComponentTabScreen extends StatelessWidget {
  const ComponentTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ComponentTabBody(),
    );
  }
}
