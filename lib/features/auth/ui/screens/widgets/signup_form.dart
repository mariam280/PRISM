import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/helpers/validators.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/widgets/custom_text_form_feild.dart';
import 'package:prism/core/utils/widgets/custom_button.dart';
import 'package:prism/core/utils/widgets/size.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
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
      GoRouter.of(context).go(AppRouters.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 10,
        children: [
          CustomTextFormField(
            validator: Validators.fullName,
            controller: emailController,
            hint: 'Full Name',
          ),
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
          CustomSize(h: 4),
          CustomButton(
            text: 'Create Account',
            onTap: onSubmit,
            textColor: AppColors.kWhite,
          ),
        ],
      ),
    );
  }
}
