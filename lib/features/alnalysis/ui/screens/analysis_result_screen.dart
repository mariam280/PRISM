import 'package:flutter/material.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/analysis_result_screen_body.dart';

class AnalysisResultScreen extends StatelessWidget {
  const AnalysisResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: AnalysisResultScreenBody()));
  }
}
