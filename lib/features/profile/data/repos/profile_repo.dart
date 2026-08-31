import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:prism/core/errors/auth_failuer.dart';
import 'package:prism/features/profile/data/models/profile_model.dart';

abstract class ProfileRepo {
  Future<Either<AuthFailure, ProfileModel>> getProfile();

  Future<Either<AuthFailure, String>> uploadProfileImage({
    required File image,
  });
}