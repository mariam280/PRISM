import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
class ImageUpLoadedBox extends StatelessWidget {
  const ImageUpLoadedBox({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DottedBorder(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.imagesUploadImageIcon),
              const CustomSize(h: 18),
              Text(
                "Upload ScreenShot",
                style: AppStyles.semiBoldInter15(context),
              ),
              const CustomSize(h: 6),
              Text(
                'JPG · PNG · WEBP',
                style: AppStyles.regularInter11(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}