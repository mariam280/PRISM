import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:prism/core/errors/failure.dart';
import 'package:prism/features/alnalysis/data/models/analysis_result_model.dart';

abstract class AnalysisRepo {
  Future<Either<Failuer, AnalysisResultModel>> analyzeScreenshot({
    required File imageFile,
  });
}