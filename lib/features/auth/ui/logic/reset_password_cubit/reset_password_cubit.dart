import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prism/features/auth/data/repos/auth_repo.dart';
import 'package:prism/features/auth/ui/logic/reset_password_cubit/reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final AuthRepo authRepo;

  ResetPasswordCubit(this.authRepo)
      : super(ResetPasswordInitial());

  Future<void> resetPassword(String newPassword) async {
    emit(ResetPasswordLoading());

    final result = await authRepo.updatePassword(
      newPassword: newPassword,
    );

    result.fold(
      (failure) {
        emit(ResetPasswordFailure(failure.message));
      },
      (_) {
        emit(ResetPasswordSuccess());
      },
    );
  }
}