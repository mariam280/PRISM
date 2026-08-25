import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:prism/core/errors/failure.dart';
import 'package:prism/core/errors/server_failuer.dart';
import 'package:prism/features/alnalysis/data/models/analysis_result_model.dart';
import 'package:prism/features/alnalysis/data/repos/analysis_repo.dart';
import 'package:prism/features/alnalysis/data/services/gemini_analysis_service.dart';

class AnalysisRepoImpl implements AnalysisRepo {
  final GeminiAnalysisService geminiAnalysisService;

  AnalysisRepoImpl(this.geminiAnalysisService);

  @override
  Future<Either<Failuer, AnalysisResultModel>> analyzeScreenshot({
    required File imageFile,
  }) async {
    try {
      final result = await geminiAnalysisService.analyzeScreenshot(imageFile);
      return Right(result);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailer.fromDioException(e));
      } else {
        return Left(ServerFailer(e.toString()));
      }
    }
  }
}