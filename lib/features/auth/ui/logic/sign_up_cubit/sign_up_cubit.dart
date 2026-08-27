import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prism/features/auth/data/models/user_model.dart';
import 'package:prism/features/auth/data/repos/auth_repo.dart';
import 'package:prism/features/auth/ui/logic/sign_up_cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo authRepo;
  UserModel? currentUser;
  SignUpCubit(this.authRepo) : super(SignUpInitial());

  Future<void> signUp(String email, String password, String name) async {
    emit(SignUpLoading());

    final result = await authRepo.signUp(
      email: email,
      password: password,
      name: name,
    );

    result.fold((failure) => emit(SignUpFailure(failure.message)), (user) {
      currentUser = user;
      emit(SignUpSuccess(user));
    });
  }
}
