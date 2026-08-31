
import 'package:prism/features/profile/data/models/profile_model.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileSuccess extends ProfileState {
  final ProfileModel profile;

  ProfileSuccess(this.profile);
}

class ProfileFailure extends ProfileState {
  final String message;

  ProfileFailure(this.message);
}

class ProfileImageUploading extends ProfileState {
  final ProfileModel profile;

  ProfileImageUploading(this.profile);
}