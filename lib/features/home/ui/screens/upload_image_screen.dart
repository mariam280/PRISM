import 'package:flutter/material.dart';
import 'package:prism/features/home/ui/screens/widgets/upload_image_screen_body.dart';

class UploadImageScreen extends StatelessWidget {
  const UploadImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SafeArea(child: UploadImageScreenBody()),
    );
  }
}