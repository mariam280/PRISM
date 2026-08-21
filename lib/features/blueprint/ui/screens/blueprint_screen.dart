import 'package:flutter/material.dart';
import 'package:prism/features/blueprint/ui/screens/widgets/blueprint_screen_body.dart';

class BlueprintScreen extends StatelessWidget {
  const BlueprintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BlueprintScreenBody()),
    );
  }
}