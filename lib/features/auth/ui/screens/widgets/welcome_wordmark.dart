import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/core/theme/app_styles.dart';

class WelcomeWordmark extends StatelessWidget {
  const WelcomeWordmark({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
         Image.asset(Assets.imagesPrismLogo, width: 24, height: 24),
        const SizedBox(width: 10),
        Text(
          'PRISM',
          style: AppStyles.boldInter18(context)
        ),
      ],
    );
  }
}