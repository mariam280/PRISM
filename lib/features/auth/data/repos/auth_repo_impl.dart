import 'package:dartz/dartz.dart';
import 'package:prism/core/errors/auth_failuer.dart';
import 'package:prism/features/auth/data/repos/auth_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepoImplementation implements AuthRepo {
  final SupabaseClient _supabase = Supabase.instance.client;

  @override
  Future<Either<AuthFailure, void>> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      await _supabase.auth.signUp(
        email: email,
        password: password,
        data: {
          'name': name,
        },
      );

      return right(null);
    } on AuthException catch (e) {
      return left(
        SupabaseAuthFailure.fromAuthException(e),
      );
    } catch (e) {
      return left(
        SupabaseAuthFailure(
          message: 'Something went wrong. Please try again.',
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, String>> signIn({
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
          SupabaseAuthFailure(
            message: 'Unable to login. Please try again.',
          ),
        );
      }

      final name = user.userMetadata?['name']?.toString();

      if (name == null || name.isEmpty) {
        return left(
          SupabaseAuthFailure(
            message: 'User name not found.',
          ),
        );
      }

      return right(name);
    } on AuthException catch (e) {
      return left(
        SupabaseAuthFailure.fromAuthException(e),
      );
    } catch (e) {
      return left(
        SupabaseAuthFailure(
          message: 'Something went wrong. Please try again.',
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, void>> signOut() async {
    try {
      await _supabase.auth.signOut();

      return right(null);
    } on AuthException catch (e) {
      return left(
        SupabaseAuthFailure.fromAuthException(e),
      );
    } catch (e) {
      return left(
        SupabaseAuthFailure(
          message: 'Something went wrong. Please try again.',
        ),
      );
    }
  }
}