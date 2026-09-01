import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/helpers/validators.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/function/show_snackbar.dart';
import 'package:prism/core/utils/widgets/custom_button.dart';
import 'package:prism/core/utils/widgets/custom_text_form_feild.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/auth/ui/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:prism/features/auth/ui/logic/sign_up_cubit/sign_up_state.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void onSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      context.read<SignUpCubit>().signUp(
        emailController.text.trim(),
        passwordController.text,
        nameController.text.trim(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          showSnackBar(
            context,
            'Account created successfully. Please check your email to confirm your account.',
          );
          GoRouter.of(context).go(AppRouters.signIn);
        }

        if (state is SignUpFailure) {
          showSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        final isLoading = state is SignUpLoading;

        return Form(
          key: formKey,
          child: Column(
            spacing: 10,
            children: [
              CustomTextFormField(
                validator: Validators.fullName,
                controller: nameController,
                enabled: !isLoading,
                hint: 'Full Name',
              ),
              CustomTextFormField(
                validator: Validators.email,
                controller: emailController,
                enabled: !isLoading,
                hint: 'Email adress',
              ),
              CustomTextFormField(
                validator: Validators.password,
                controller: passwordController,
                enabled: !isLoading,
                isObscure: true,
                hint: 'Password',
              ),
              CustomSize(h: 4),
              isLoading
                  ? const CircularProgressIndicator(
                      color: AppColors.purbleColor,
                    )
                  : CustomButton(
                      text: 'Create Account',
                      onTap: onSubmit,
                      textColor: AppColors.kWhite,
                    ),
            ],
          ),
        );
      },
    );
  }
}