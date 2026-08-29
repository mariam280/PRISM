import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/features/alnalysis/data/models/analysis_result_model.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';

void openProjectDetails(BuildContext context, RecentProjectModel project) {
  final result = AnalysisResultModel.fromJson(
    project.analysisResultJson!,
    screenshotPath: project.image,
  );
  GoRouter.of(context).go(
    AppRouters.analysisResult,
    extra: {'result': result, 'project': project},
  );
}