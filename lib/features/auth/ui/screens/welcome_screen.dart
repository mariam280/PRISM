import 'package:flutter/material.dart';
import 'package:prism/features/auth/ui/screens/widgets/welcome_screen_body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: WelcomeScreenBody()
      ),
    );
  }
}