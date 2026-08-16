import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, -0.15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Assets.imagesPrismLogo, width: 64, height: 64),
          const CustomSize(h: 20),
          Text('PRISM', style: AppStyles.boldInter28(context)),
          const CustomSize(h: 8),
          Text(
            'See the system behind every screen.',
            textAlign: TextAlign.center,
            style: AppStyles.regularInter13(context),
          ),
        ],
      ),
    );
  }
}
