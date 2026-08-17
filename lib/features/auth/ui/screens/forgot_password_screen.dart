import 'package:flutter/material.dart';
import 'package:prism/features/auth/ui/screens/widgets/forgot_password_screen_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: ForgotPasswordScreenBody()));
  }
}
