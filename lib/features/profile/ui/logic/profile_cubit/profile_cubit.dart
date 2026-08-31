import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prism/features/profile/data/models/profile_model.dart';
import 'package:prism/features/profile/data/repos/profile_repo.dart';
import 'package:prism/features/profile/ui/logic/profile_cubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo profileRepo;

  ProfileModel? currentProfile;

  ProfileCubit(this.profileRepo) : super(ProfileInitial());

  Future<void> getProfile() async {
    emit(ProfileLoading());

    final result = await profileRepo.getProfile();

    result.fold(
      (failure) => emit(ProfileFailure(failure.message)),
      (profile) {
        currentProfile = profile;
        emit(ProfileSuccess(profile));
      },
    );
  }

  Future<void> uploadProfileImage(File image) async {
    if (currentProfile == null) return;

    emit(ProfileImageUploading(currentProfile!));

    final result = await profileRepo.uploadProfileImage(image: image);

    result.fold(
      (failure) => emit(ProfileFailure(failure.message)),
      (imageUrl) {
        final updatedProfile = ProfileModel(
          name: currentProfile!.name,
          email: currentProfile!.email,
          imageUrl: imageUrl,
        );

        currentProfile = updatedProfile;

        emit(ProfileSuccess(updatedProfile));
      },
    );
  }
}