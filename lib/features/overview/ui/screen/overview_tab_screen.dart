import 'package:flutter/material.dart';
import 'package:prism/core/utils/widgets/custom_background.dart';
import 'package:prism/features/overview/ui/screen/widgets/overview_tab_body.dart';

class OverviewTabScreen extends StatelessWidget {
  const OverviewTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: SafeArea(child: OverviewTabBody()),
    );
  }
}