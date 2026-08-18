import 'package:flutter/material.dart';
import 'package:prism/features/home/ui/screens/widgets/review_screenshot_body.dart';

class ReviewScreenshotScreen extends StatelessWidget {
  const ReviewScreenshotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ReviewScreenshotBody()),
    );
  }
}