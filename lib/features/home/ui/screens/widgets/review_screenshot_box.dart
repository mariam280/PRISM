import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/core/theme/app_colors.dart';

class ReviewScreenshotBox extends StatelessWidget {
  const ReviewScreenshotBox({super.key});
  //final File? imageFile;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        color: AppColors.purbleColor.withValues(alpha: 0.5),
        strokeWidth: 1.115,
        dashPattern: const [6, 4],
        radius: const Radius.circular(20),
        padding: EdgeInsets.zero,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 35),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.purbleColor.withValues(alpha: 0.04),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(Assets.imagesOnboard2,
                    fit: BoxFit.cover,
                    width: double.infinity)
                    // Image.file(
                    //   imageFile!,
                    //   fit: BoxFit.cover,
                    //   width: double.infinity,
                    // ),
                  )
      ),
    );
  }
}
