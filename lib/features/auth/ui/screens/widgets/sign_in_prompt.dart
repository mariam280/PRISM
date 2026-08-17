import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_styles.dart';

class SignInPrompt extends StatelessWidget {
  const SignInPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              Text(
                "Already have an account? ",
                style: AppStyles.regularInter13(context),
              ),
              InkWell(
                onTap: (){
                  GoRouter.of(context).push(AppRouters.signIn);
                },
                child: Text(
                  'Sign in',
                  style: AppStyles.semiBoldInter13(context),
                ),
              ),
            ],
          ),
        );
  }
}