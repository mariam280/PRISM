import 'package:flutter/material.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/analysi_screen_body.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: AnalysisScreenBody()),
    );
  }
}