import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/custom_text_button.dart';
import 'package:prism/features/auth/ui/screens/widgets/signin_form.dart';
import 'package:prism/features/auth/ui/screens/widgets/signup_prompt.dart';
import 'package:prism/features/auth/ui/screens/widgets/welcome_wordmark.dart';

class SigninScreenBody extends StatelessWidget {
  const SigninScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: SingleChildScrollView(
        child: Column(
          spacing: 24,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeWordmark(),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.09),
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
            Text('Sign in', style: AppStyles.boldInter22(context)),
            SigninForm(),
            const SignupPrompt(),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.09),
          ],
        ),
      ),
    );
  }
}
