import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:prism/core/helpers/validators.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/function/show_snackbar.dart';
import 'package:prism/core/utils/widgets/custom_button.dart';
import 'package:prism/core/utils/widgets/custom_text_button.dart';
import 'package:prism/core/utils/widgets/custom_text_form_feild.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/auth/ui/logic/log_in_cubit/login_cubit.dart';
import 'package:prism/features/auth/ui/logic/log_in_cubit/login_state.dart';
import 'package:prism/features/auth/ui/logic/sign_up_cubit/sign_up_state.dart';

class SigninForm extends StatefulWidget {
  const SigninForm({super.key});

  @override
  State<SigninForm> createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void onSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      context.read<LoginCubit>().login(
        emailController.text.trim(),
        passwordController.text,
      );
    }
  }

  void onForgotPassword() {
    context.push(AppRouters.forgotPassword);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          GoRouter.of(context).go(AppRouters.layout);
        }

        if (state is LoginFailure) {
          showSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            spacing: 10,
            children: [
              CustomTextFormField(
                validator: Validators.email,
                controller: emailController,
                hint: 'Email adress',
              ),

              CustomTextFormField(
                validator: Validators.password,
                controller: passwordController,
                hint: 'Password',
              ),

              Align(
                alignment: Alignment.centerRight,
                child: CustomTextButton(
                  text: 'Forgot Password?',
                  onPressed: onForgotPassword,
                ),
              ),

              CustomSize(h: 4),

              CustomButton(
                text: 'Sign in',
                onTap: state is SignUpLoading ? null :onSubmit,
                textColor: AppColors.kWhite,
              ),
            ],
          ),
        );
      },
    );
  }
}
