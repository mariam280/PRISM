import 'package:flutter/material.dart';
import 'package:prism/features/auth/ui/screens/widgets/reset_password_screen_body.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: ResetPasswordScreenBody()));
  }
}
