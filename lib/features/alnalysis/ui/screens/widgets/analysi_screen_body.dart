import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/alnalysis/data/models/analysis_step_model.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/analyzing_steps_list.dart';

class AnalysisScreenBody extends StatelessWidget {
  const AnalysisScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Lottie.asset('assets/animation/document_ocr _scan.json'),
          const CustomSize(h: 20),
          Text(
            'Analyzing your interface',
            style: AppStyles.boldInter22(context),
          ),
          const CustomSize(h: 6),
          Text(
            'PRISM is uncovering the system behind your screen.',
            style: AppStyles.regularInter14(context),
          ),
          const CustomSize(h: 28),
          AnalyzingStepsList(
  steps: const [
    AnalysisStepModel(title: 'Detecting layout', activeCaption: 'Mapping components'),
    AnalysisStepModel(title: 'Finding components', activeCaption: 'Identifying UI elements'),
    AnalysisStepModel(title: 'Extracting colors', activeCaption: 'Reading color palette'),
    AnalysisStepModel(title: 'Analyzing typography', activeCaption: 'Detecting fonts'),
    AnalysisStepModel(title: 'Building UI blueprint', activeCaption: 'Assembling structure'),
  ],
  onCompleted: () {
    GoRouter.of(context).go(AppRouters.afteranalysis);
  },
)
        ],
      ),
    );
  }
}
