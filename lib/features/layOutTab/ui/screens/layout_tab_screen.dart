import 'package:flutter/material.dart';
import 'package:prism/core/utils/widgets/custom_background.dart';
import 'package:prism/features/layOutTab/ui/screens/widgets/layout_tab_body.dart';

class LayoutTabScreen extends StatelessWidget {
  const LayoutTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: SafeArea(child: LayoutTabBody()),
    );
  }
}