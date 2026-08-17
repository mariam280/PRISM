import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/auth/ui/screens/widgets/auth_option_buttons.dart';
import 'package:prism/features/auth/ui/screens/widgets/signup_prompt.dart';
import 'package:prism/features/auth/ui/screens/widgets/welcome_wordmark.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WelcomeWordmark(),
          Spacer(),
          Text('Welcome to PRISM', style: AppStyles.boldInter26(context)),
          const CustomSize(h: 8),
          Text(
            'Understand interfaces. Build with clarity.',
            style: AppStyles.regularInter14(context),
          ),
          const CustomSize(h: 40),
          AuthOptionButtons(onTapGoogle: () {}, onTapEmail: () {
            GoRouter.of(context).push(AppRouters.signIn);
          }),
          const SignupPrompt(),
          Spacer(),
        ],
      ),
    );
  }
}
