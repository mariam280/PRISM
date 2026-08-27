import 'package:dartz/dartz.dart';
import 'package:prism/core/errors/auth_failuer.dart';
import 'package:prism/features/auth/data/models/user_model.dart';

abstract class AuthRepo {
  Future<Either<AuthFailure, UserModel>> signUp({
    required String email,
    required String password,
    required String name,
  });

  Future<Either<AuthFailure, UserModel>> signIn({
    required String email,
    required String password,
  });

  Future<Either<AuthFailure, void>> signOut();
}
