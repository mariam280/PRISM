import 'package:prism/features/alnalysis/data/models/analysis_result_model.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';

sealed class AnalysisState {}

class AnalysisInitial extends AnalysisState {}

class AnalysisLoading extends AnalysisState {}

class AnalysisSuccess extends AnalysisState {
  AnalysisSuccess({required this.result, required this.project});

  final AnalysisResultModel result;
  final RecentProjectModel project;
}

class AnalysisError extends AnalysisState {
  AnalysisError(this.message);
  final String message;
}