import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/widgets/custom_button.dart';
import 'package:prism/core/utils/widgets/size.dart';

class AuthOptionButtons extends StatelessWidget {
  const AuthOptionButtons({
    super.key,
    this.onTapEmail,
    this.onTapGoogle,
  });
  final Function()? onTapEmail;
  final Function()? onTapGoogle;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        CustomButton(
          onTap: onTapGoogle,
          text: 'Continue with Google',
          textColor: AppColors.kBlack,
          buttonColor: AppColors.kWhite,
          leftImage: Assets.imagesGoogleIcon,
        ),
        CustomButton(
          onTap: onTapEmail,
          text: 'Continue with Email',
          textColor: AppColors.kWhite,
          borderColor: Border.all(color: AppColors.grey.withAlpha(90)),
          buttonColor: AppColors.transparent,
        ),
        const CustomSize(h: 4),
        
      ],
    );
  }
}
