import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:prism/core/networking/api_service.dart';
import 'package:prism/features/alnalysis/data/repos/analysis_repo.dart';
import 'package:prism/features/alnalysis/data/repos/analysis_repo_impl.dart';
import 'package:prism/features/alnalysis/data/services/gemini_analysis_service.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<GeminiAnalysisService>(
    GeminiAnalysisService(apiService: getIt()),
  );
getIt.registerSingleton<AnalysisRepo>(AnalysisRepoImpl(getIt()));
}