import 'package:flutter/material.dart';
import 'package:prism/features/layout/ui/screens/widgets/layout_screen_body.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: LayoutScreenBody()),
    );
  }
}