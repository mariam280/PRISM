import 'package:flutter/material.dart';
import 'package:prism/features/auth/ui/screens/widgets/signin_screen_body.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SigninScreenBody(),
      ),
    );
  }
}