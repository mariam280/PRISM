import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prism/features/alnalysis/data/repos/analysis_repo.dart';
import 'package:prism/features/alnalysis/ui/logic/cubit/analysis_state.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';

class AnalysisCubit extends Cubit<AnalysisState> {
  AnalysisCubit(this.analysisRepo) : super(AnalysisInitial());

  final AnalysisRepo analysisRepo;

  Future<void> analyzeScreenshot(File imageFile) async {
    emit(AnalysisLoading());

    final result = await analysisRepo.analyzeScreenshot(imageFile: imageFile);

    result.fold(
      (failure) => emit(AnalysisError(failure.errorMessage)),
      (analysisResult) {
        final project = RecentProjectModel.fromAnalysis(
          analysisResult.projectMeta,
          image: imageFile.path,
          timeAgo: DateTime.now(),
        );
        emit(AnalysisSuccess(result: analysisResult, project: project));
      },
    );
  }
}