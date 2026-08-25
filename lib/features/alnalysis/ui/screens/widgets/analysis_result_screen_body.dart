import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/utils/widgets/appbar_header.dart';
import 'package:prism/features/alnalysis/data/models/analysis_result_model.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/analysis_result_screen_content.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/analysis_result_screen_footer.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';

class AnalysisResultScreenBody extends StatelessWidget {
  const AnalysisResultScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final args = GoRouterState.of(context).extra as Map<String, dynamic>;
    final result = args['result'] as AnalysisResultModel;
    final project = args['project'] as RecentProjectModel;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarHeader(
              onTap: () {
                GoRouter.of(context).go(AppRouters.layout);
              },
              title: 'Fitness Dashboard',
            ),
            AnalysisResultScreenContent(),
            AnalysisResultScreenFooter(
              onTapBlueprint: () {
                GoRouter.of(context).go(
                  AppRouters.blueprint,
                  extra: {'result': result, 'project': project},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
