import 'package:flutter/material.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/after_analysis_screen_body.dart';

class AfterAnalysisScreen extends StatelessWidget {
  const AfterAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: AfterAnalysisScreenBody()));
  }
}
