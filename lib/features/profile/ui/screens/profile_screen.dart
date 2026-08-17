import 'package:flutter/material.dart';
import 'package:prism/features/profile/ui/screens/widgets/profile_screen_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ProfileScreenBody(),
    );
  }
}