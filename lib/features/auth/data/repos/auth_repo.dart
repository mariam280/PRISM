import 'package:dartz/dartz.dart';
import 'package:prism/core/errors/auth_failuer.dart';

abstract class AuthRepo {
  Future<Either<AuthFailure, void>> signUp({
    required String email,
    required String password,
    required String name,
  });

  Future<Either<AuthFailure, String>> signIn({
    required String email,
    required String password,
  });

  Future<Either<AuthFailure, void>> signOut();
}
