import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/custom_text_button.dart';
import 'package:prism/features/auth/ui/screens/widgets/sign_in_prompt.dart';
import 'package:prism/features/auth/ui/screens/widgets/signup_form.dart';
import 'package:prism/features/auth/ui/screens/widgets/welcome_wordmark.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WelcomeWordmark(),
          Spacer(),
          Row(
            children: [
              Icon(Icons.arrow_back, size: 16, color: AppColors.grey),
              CustomTextButton(
                text: "back",
                textColor: AppColors.grey,
                onPressed: () {
                  GoRouter.of(context).pop();
                },
              ),
            ],
          ),
          Text('Create Account', style: AppStyles.boldInter22(context)),
          SignupForm(),
          const SignInPrompt(),
          Spacer(),
        ],
      ),
    );
  }
}