import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';

class ReviewScreenshotBox extends StatelessWidget {
  const ReviewScreenshotBox({super.key});
  //final File? imageFile;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        Assets.imagesOnboard2,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
      // Image.file(
      //   imageFile!,
      //   fit: BoxFit.cover,
      //   width: double.infinity,
      // ),
    );
  }
}
