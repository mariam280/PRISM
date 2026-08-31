import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/helpers/validators.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/function/show_snackbar.dart';
import 'package:prism/core/utils/widgets/custom_text_form_feild.dart';
import 'package:prism/core/utils/widgets/custom_button.dart';
import 'package:prism/features/auth/ui/logic/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:prism/features/auth/ui/logic/forgot_password_cubit/forgot_password_state.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void onSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      context.read<ForgotPasswordCubit>().sendResetEmail(
        emailController.text.trim(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        if (state is ForgotPasswordLoading) {
          const Center(
            child: CircularProgressIndicator(color: AppColors.purbleColor),
          );
        }
        if (state is ForgotPasswordSuccess) {
          showSnackBar(
            context,
            'Password reset email sent. Please check your inbox.',
          );
          GoRouter.of(context).pop();
        }

        if (state is ForgotPasswordFailure) {
          showSnackBar(context, state.message);
        }
      },
      child: Form(
        key: formKey,
        child: Column(
          spacing: 10,
          children: [
            CustomTextFormField(
              validator: Validators.email,
              controller: emailController,
              hint: 'Email adress',
            ),
            CustomButton(
              text: 'Send Reset Link',
              onTap: onSubmit,
              textColor: AppColors.kWhite,
            ),
          ],
        ),
      ),
    );
  }
}
