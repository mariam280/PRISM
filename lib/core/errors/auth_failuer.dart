import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthFailure {
  final String message;

  AuthFailure({required this.message});
}

class SupabaseAuthFailure extends AuthFailure {
  SupabaseAuthFailure({required super.message});

  factory SupabaseAuthFailure.fromAuthException(AuthException e) {
    switch (e.message) {
      case 'User already registered':
        return SupabaseAuthFailure(
          message: 'The email is already registered.',
        );

      case 'Invalid login credentials':
        return SupabaseAuthFailure(
          message: 'Incorrect email or password.',
        );

      default:
        return SupabaseAuthFailure(
          message: e.message,
        );
    }
  }
}