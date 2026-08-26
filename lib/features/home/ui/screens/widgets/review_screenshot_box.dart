import 'dart:io';

import 'package:flutter/material.dart';

class ReviewScreenshotBox extends StatelessWidget {
  const ReviewScreenshotBox({super.key, required this.imageFile});

  final File imageFile;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.file(
        imageFile,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}
