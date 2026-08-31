import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prism/features/auth/data/repos/auth_repo.dart';
import 'package:prism/features/auth/ui/logic/forgot_password_cubit/forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final AuthRepo authRepo;

  ForgotPasswordCubit(this.authRepo)
      : super(ForgotPasswordInitial());

  Future<void> sendResetEmail(String email) async {
    emit(ForgotPasswordLoading());

    final result = await authRepo.sendPasswordResetEmail(
      email: email,
    );

    result.fold(
      (failure) {
        emit(ForgotPasswordFailure(failure.message));
      },
      (_) {
        emit(ForgotPasswordSuccess());
      },
    );
  }
}