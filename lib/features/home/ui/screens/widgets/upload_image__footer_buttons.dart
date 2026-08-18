import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/widgets/custom_button.dart';
import 'package:prism/core/utils/widgets/size.dart';

class UploadImageFooterButtons extends StatelessWidget {
  const UploadImageFooterButtons({
    super.key,
    this.onTapGallery,
    this.onTapCamera,
  });
  final Function()? onTapGallery;
  final Function()? onTapCamera;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        CustomButton(onTap: onTapGallery, text: 'Choose from Gallery'),
        CustomButton(
          onTap: onTapCamera,
          text: 'Take a photo',
          textColor: AppColors.kWhite,
          borderColor: Border.all(color: AppColors.grey.withAlpha(90)),
          buttonColor: AppColors.transparent,
        ),
        const CustomSize(h: 4),
      ],
    );
  }
}
