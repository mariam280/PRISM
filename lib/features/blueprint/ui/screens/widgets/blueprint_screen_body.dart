import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/features/alnalysis/data/models/analysis_result_model.dart';
import 'package:prism/features/blueprint/ui/screens/widgets/blueprint_appBar.dart';
import 'package:prism/features/blueprint/ui/screens/widgets/blueprint_tabbar_details.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';

class BlueprintScreenBody extends StatelessWidget {
  const BlueprintScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final args = GoRouterState.of(context).extra as Map<String, dynamic>;
    final result = args['result'] as AnalysisResultModel;
    final project = args['project'] as RecentProjectModel;
    return Column(
      spacing: 20,
      children: [
        BlueprintAppbar(
          onTap: () {
            GoRouter.of(context).go(
              AppRouters.analysisResult,
              extra: {'result': result, 'project': project},
            );
          },
          title: 'E-commerce Home',
        ),
        Expanded(child: BlueprintTabbarDetails(
          analysisResult: result,
          recentProject: project,
        )),
      ],
    );
  }
}
