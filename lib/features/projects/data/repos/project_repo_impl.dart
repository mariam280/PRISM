import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:prism/core/errors/failure.dart';
import 'package:prism/core/errors/supabase_failuer.dart';
import 'package:prism/features/projects/data/repos/project_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:prism/features/alnalysis/data/models/analysis_result_model.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';

class ProjectRepoImpl implements ProjectRepo {
  ProjectRepoImpl(this._supabase);

  final SupabaseClient _supabase;



  @override
  Future<Either<Failuer, RecentProjectModel>> saveProject({
    required File imageFile,
    required AnalysisResultModel result,
    required RecentProjectModel project,
  }) async {
    try {
      final userId = _supabase.auth.currentUser?.id;
      if (userId == null) {
        return Left(SupabaseFailer.notSignedIn());
      }

      final imageUrl = await _uploadScreenshot(imageFile, userId);

      final insertJson = project.toInsertJson(
        userId: userId,
        imageUrl: imageUrl,
        analysisResultJson: result.toJson(),
      );

      final savedRow = await _supabase
          .from(dotenv.env['Table_Name']!)
          .insert(insertJson)
          .select()
          .single();

      return Right(RecentProjectModel.fromSupabaseRow(savedRow));
    } on StorageException catch (e) {
      return Left(SupabaseFailer.fromStorageException(e));
    } on PostgrestException catch (e) {
      return Left(SupabaseFailer.fromPostgrestException(e));
    } catch (e) {
      return Left(SupabaseFailer.unknown(e));
    }
  }

  Future<String> _uploadScreenshot(File imageFile, String userId) async {
    final extension = imageFile.path.split('.').last;
    final fileName = '$userId/${DateTime.now().millisecondsSinceEpoch}.$extension';

    await _supabase.storage.from(dotenv.env['Bucket_Name']!).upload(fileName, imageFile);

    return _supabase.storage.from(dotenv.env['Bucket_Name']!).getPublicUrl(fileName);
  }
}