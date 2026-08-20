import 'package:flutter/material.dart';
import 'package:prism/core/utils/widgets/appbar_header.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/analysis_result_screen_content.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/analysis_result_screen_footer.dart';

class AnalysisResultScreenBody extends StatelessWidget {
  const AnalysisResultScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarHeader(title: 'Fitness Dashboard'),
            AnalysisResultScreenContent(),
            AnalysisResultScreenFooter(),
          ],
        ),
      ),
    );
  }
}
