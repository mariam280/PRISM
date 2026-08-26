import 'package:flutter/material.dart';
import 'package:prism/features/components/data/models/component_model.dart';
import 'package:prism/features/components/ui/screens/widgets/component_tab_body.dart';

class ComponentTabScreen extends StatelessWidget {
  const ComponentTabScreen({super.key, required this.components});

  final List<ComponentModel> components;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ComponentTabBody(components: components),
    );
  }
}