import 'package:prism/core/errors/failure.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseFailer extends Failuer {
  SupabaseFailer(super.errorMessage);

  factory SupabaseFailer.fromStorageException(StorageException exception) {
    return SupabaseFailer('Failed to upload screenshot: ${exception.message}');
  }

  factory SupabaseFailer.fromPostgrestException(
    PostgrestException exception,
  ) {
    switch (exception.code) {
      case '23505': // unique_violation
        return SupabaseFailer('This project already exists.');
      case '42501': // insufficient_privilege (RLS policy blocked it)
        return SupabaseFailer(
          "You don't have permission to do that. Please sign in again.",
        );
      default:
        return SupabaseFailer('Failed to save project: ${exception.message}');
    }
  }

  factory SupabaseFailer.notSignedIn() {
    return SupabaseFailer('You must be signed in to save a project.');
  }

  factory SupabaseFailer.unknown(Object error) {
    return SupabaseFailer('Something went wrong while saving: $error');
  }
}