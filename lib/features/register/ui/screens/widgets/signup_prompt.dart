import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';

class SignupPrompt extends StatelessWidget {
  const SignupPrompt({super.key, this.onTapCreateOne});
 final void Function()? onTapCreateOne;
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
                onTap: onTapCreateOne,
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