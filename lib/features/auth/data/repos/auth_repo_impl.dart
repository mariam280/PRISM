import 'package:dartz/dartz.dart';
import 'package:prism/core/errors/auth_failuer.dart';
import 'package:prism/features/auth/data/models/user_model.dart';
import 'package:prism/features/auth/data/repos/auth_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepoImplementation implements AuthRepo {
  final SupabaseClient _supabase = Supabase.instance.client;

  @override
  Future<Either<AuthFailure, UserModel>> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final response = await _supabase.auth.signUp(
        email: email,
        password: password,
        data: {'name': name},
      );

      final user = response.user;

      if (user == null) {
        return left(
          SupabaseAuthFailure(
            message: 'Something went wrong while creating your account.',
          ),
        );
      }

      final userModel = UserModel(
        uid: user.id,
        email: user.email ?? email,
        name: user.userMetadata?['name'] ?? name,
      );

      return right(userModel);
    } on AuthException catch (e) {
      return left(SupabaseAuthFailure.fromAuthException(e));
    } catch (e) {
      return left(
        SupabaseAuthFailure(message: 'Something went wrong. Please try again.'),
      );
    }
  }

  @override
  Future<Either<AuthFailure, UserModel>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      final user = response.user;

      if (user == null) {
        return left(
          SupabaseAuthFailure(message: 'Unable to login. Please try again.'),
        );
      }

      final userModel = UserModel(
        uid: user.id,
        email: user.email ?? email,
        name: user.userMetadata?['name'] ?? '',
      );

      return right(userModel);
    } on AuthException catch (e) {
      return left(SupabaseAuthFailure.fromAuthException(e));
    } catch (e) {
      return left(
        SupabaseAuthFailure(message: 'Something went wrong. Please try again.'),
      );
    }
  }

  @override
  Future<Either<AuthFailure, void>> signOut() async {
    try {
      await _supabase.auth.signOut();

      return right(null);
    } on AuthException catch (e) {
      return left(SupabaseAuthFailure.fromAuthException(e));
    } catch (e) {
      return left(
        SupabaseAuthFailure(message: 'Something went wrong. Please try again.'),
      );
    }
  }
}
