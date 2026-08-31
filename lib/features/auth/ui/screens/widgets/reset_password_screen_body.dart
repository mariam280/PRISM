import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/custom_text_button.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/auth/ui/screens/widgets/reset_password_form.dart';
import 'package:prism/features/auth/ui/screens/widgets/welcome_wordmark.dart';

class ResetPasswordScreenBody extends StatelessWidget {
  const ResetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
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
          CustomSize(h: 24),
          Text('Reset Password', style: AppStyles.boldInter22(context)),
          CustomSize(h: 6),
          Text(
            'Please enter a new password for your account',
            style: AppStyles.regularInter14(context),
          ),
          CustomSize(h: 24),
          ResetPasswordForm(),
          Spacer(),
        ],
      ),
    );
  }
}
