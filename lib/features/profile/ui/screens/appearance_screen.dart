import 'package:flutter/material.dart';
import 'package:prism/features/profile/ui/screens/widgets/appearance_screen_body.dart';

class AppearanceScreen extends StatelessWidget {
  const AppearanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: AppearanceScreenBody()),
    );
  }
}