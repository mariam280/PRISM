import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/helpers/validators.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/widgets/custom_text_form_feild.dart';
import 'package:prism/core/utils/widgets/custom_button.dart';
import 'package:prism/core/utils/widgets/custom_text_button.dart';
import 'package:prism/core/utils/widgets/size.dart';

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
      GoRouter.of(context).go(AppRouters.layout);
    }
  }

  void onForgotPassword() {
    GoRouter.of(context).push(AppRouters.forgotPassword);
  }

  @override
  Widget build(BuildContext context) {
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
            onTap: onSubmit,
            textColor: AppColors.kWhite,
          ),
        ],
      ),
    );
  }
}
