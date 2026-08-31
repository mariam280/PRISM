import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/helpers/validators.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/function/show_snackbar.dart';
import 'package:prism/core/utils/widgets/custom_text_form_feild.dart';
import 'package:prism/core/utils/widgets/custom_button.dart';
import 'package:prism/features/auth/ui/logic/reset_password_cubit/reset_password_cubit.dart';
import 'package:prism/features/auth/ui/logic/reset_password_cubit/reset_password_state.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void onSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      context.read<ResetPasswordCubit>().resetPassword(passwordController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        if (state is ResetPasswordLoading) {
          const Center(
            child: CircularProgressIndicator(color: AppColors.purbleColor),
          );
        }
        if (state is ResetPasswordSuccess) {
          showSnackBar(context, 'Password updated successfully.');
          GoRouter.of(context).go(AppRouters.signIn);
        }

        if (state is ResetPasswordFailure) {
          showSnackBar(context, state.message);
        }
      },
      child: Form(
        key: formKey,
        child: Column(
          spacing: 10,
          children: [
            CustomTextFormField(
              validator: Validators.password,
              controller: passwordController,
              hint: 'Enter new password',
            ),
            CustomButton(
              text: 'Reset Password',
              onTap: onSubmit,
              textColor: AppColors.kWhite,
            ),
          ],
        ),
      ),
    );
  }
}
