import 'package:flutter/material.dart';
import 'package:prism/core/utils/widgets/custom_background.dart';
import 'package:prism/features/design/ui/screens/widgets/design_tab_body.dart';

class DesignTabScreen extends StatelessWidget {
  const DesignTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: SafeArea(child: DesignTabBody()),
    );
  }
}