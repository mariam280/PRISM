import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:prism/core/errors/failure.dart';
import 'package:prism/features/alnalysis/data/models/analysis_result_model.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';

abstract class ProjectRepo {
  Future<Either<Failuer, RecentProjectModel>> saveProject({
    required File imageFile,
    required AnalysisResultModel result,
    required RecentProjectModel project,
  });

  Future<Either<Failuer, List<RecentProjectModel>>> getProjects({int? limit});
}
