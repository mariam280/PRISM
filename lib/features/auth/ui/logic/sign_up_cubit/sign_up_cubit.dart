import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prism/core/cache/get_storage_helper.dart';
import 'package:prism/features/auth/data/repos/auth_repo.dart';
import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo authRepo;

  SignUpCubit(this.authRepo) : super(SignUpInitial());

  Future<void> signUp(
    String email,
    String password,
    String name,
  ) async {
    emit(SignUpLoading());

    final result = await authRepo.signUp(
      email: email,
      password: password,
      name: name,
    );

    result.fold(
      (failure) => emit(
        SignUpFailure(failure.message),
      ),
      (_) async {
        await GetStorageHelper.setGetStorageData(key: 'userName', value: name);
        emit(SignUpSuccess());
      },
    );
  }
}