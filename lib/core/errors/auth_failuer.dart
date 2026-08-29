import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthFailure {
  final String message;

  AuthFailure({required this.message});
}

class SupabaseAuthFailure extends AuthFailure {
  SupabaseAuthFailure({required super.message});

  factory SupabaseAuthFailure.fromAuthException(AuthException e) {
    final message = e.message.toLowerCase();

    if (message.contains('user already registered')) {
      return SupabaseAuthFailure(
        message: 'This email is already registered.',
      );
    }

    if (message.contains('invalid login credentials')) {
      return SupabaseAuthFailure(
        message: 'email not found or incorrect password.',
      );
    }

    if (message.contains('email not confirmed')) {
      return SupabaseAuthFailure(
        message: 'Please confirm your email before signing in.',
      );
    }

    if (message.contains('password')) {
      return SupabaseAuthFailure(
        message: 'Password does not meet the required requirements.',
      );
    }

    if (message.contains('rate limit') ||
        message.contains('too many requests')) {
      return SupabaseAuthFailure(
        message: 'Too many attempts. Please try again later.',
      );
    }

    return SupabaseAuthFailure(
      message: 'Something went wrong. Please try again.',
    );
  }
}