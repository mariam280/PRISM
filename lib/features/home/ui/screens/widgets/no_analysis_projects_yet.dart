
import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class NoAnalysisProjectsYet extends StatelessWidget {
  const NoAnalysisProjectsYet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(Assets.imagesNoDataAmico),
          Text(
            "There is no chats yet,\nStart a new Chat 🤖",
            style: AppStyles.regularInter16(
              context,
            ).copyWith(color: AppColors.kWhite),
          ),
        ],
      ),
    );
  }
}
