import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:prism/core/errors/auth_failuer.dart';
import 'package:prism/features/profile/data/models/profile_model.dart';
import 'package:prism/features/profile/data/repos/profile_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileRepoImpl extends ProfileRepo{
  final _supabase = Supabase.instance.client;
 @override
Future<Either<AuthFailure, ProfileModel>> getProfile() async {
  try {
    final user = _supabase.auth.currentUser;
final session = _supabase.auth.currentSession;

print('USER ID: ${user?.id}');
print('SESSION EXISTS: ${session != null}');

    if (user == null) {
      return left(
        SupabaseAuthFailure(
          message: 'User is not logged in.',
        ),
      );
    }

    final name = user.userMetadata?['name']?.toString() ?? 'User';
    final email = user.email ?? 'user@example.com';
    final imageUrl = user.userMetadata?['avatar_url']?.toString();

    return right(
      ProfileModel(
        name: name,
        email: email,
        imageUrl: imageUrl,
      ),
    );
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
Future<Either<AuthFailure, String>> uploadProfileImage({
  required File image,
}) async {
  try {
    final user = _supabase.auth.currentUser;

    if (user == null) {
      return left(
        SupabaseAuthFailure(
          message: 'User is not logged in.',
        ),
      );
    }

    final path = '${user.id}/avatar.jpg';

    await _supabase.storage
        .from('avatars')
        .upload(
          path,
          image,
          fileOptions: const FileOptions(
            upsert: true,
            contentType: 'image/jpeg',
          ),
        );

    final imageUrl = _supabase.storage
        .from('avatars')
        .getPublicUrl(path);

    await _supabase.auth.updateUser(
      UserAttributes(
        data: {
          'avatar_url': imageUrl,
        },
      ),
    );

    return right(imageUrl);
  } on StorageException catch (e) {
    return left(
      SupabaseAuthFailure(
        message: e.message,
      ),
    );
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