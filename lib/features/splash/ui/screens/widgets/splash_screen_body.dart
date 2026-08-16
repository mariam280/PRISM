import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/features/splash/ui/screens/widgets/radial_glow.dart';
import 'package:prism/features/splash/ui/screens/widgets/splash_content.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    super.initState();
    navigateAfterDelay();
  }

  Future<void> navigateAfterDelay() async {
    await Future.delayed(const Duration(seconds: 3));
      GoRouter.of(context).go(AppRouters.onBoarding);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const RadialGlow(),
        const SplashContent(),
        Positioned(
          left: 0,
          right: 0,
          bottom: 20,
          child: Transform.scale(
            scaleX: -1,
            child: Lottie.asset("assets/animation/Loading.json"),
          ),
        ),
      ],
    );
  }
}
