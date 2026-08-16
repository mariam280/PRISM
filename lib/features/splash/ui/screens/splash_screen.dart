import 'package:flutter/material.dart';
import 'package:prism/features/splash/ui/screens/widgets/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SplashScreenBody()),
    );
  }
}