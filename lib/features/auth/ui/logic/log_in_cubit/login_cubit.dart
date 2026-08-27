import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prism/features/auth/data/models/user_model.dart';
import 'package:prism/features/auth/data/repos/auth_repo.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo authRepo;
 UserModel? currentUser;
  LoginCubit(this.authRepo) : super(LoginInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading());

    final result = await authRepo.signIn(email: email, password: password);

    result.fold((failure) => emit(LoginFailure(failure.message)), (user) {
      currentUser = user;
      emit(LoginSuccess(user));
    });
  }
}
