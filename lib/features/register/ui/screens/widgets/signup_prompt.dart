import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_styles.dart';

class SignupPrompt extends StatelessWidget {
  const SignupPrompt({super.key});
  @override
  Widget build(BuildContext context) {
    return Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              Text(
                "Don't have an account? ",
                style: AppStyles.regularInter13(context),
              ),
              InkWell(
                onTap: (){
                  GoRouter.of(context).go(AppRouters.register);
                },
                child: Text(
                  'Create one',
                  style: AppStyles.semiBoldInter13(context),
                ),
              ),
            ],
          ),
        );
  }
}