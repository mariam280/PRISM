import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/utils/widgets/custom_button.dart';

class AnalysisResultScreenFooter extends StatelessWidget {
  const AnalysisResultScreenFooter({super.key, this.onTapBlueprint});
  final void Function()? onTapBlueprint;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        CustomButton(
          onTap: onTapBlueprint,
          text: 'Open Blueprint →',
        ),
        CustomButton(
          onTap: () {
            GoRouter.of(context).go(AppRouters.analysis);
          },
          text: '↻ Re-analyze',
          textColor: AppColors.kWhite,
          borderColor: Border.all(color: AppColors.grey.withAlpha(90)),
          buttonColor: AppColors.transparent,
        ),
        CustomButton(
          onTap: () {},
          text: '✎ Rename',
          textColor: AppColors.kWhite,
          borderColor: Border.all(color: AppColors.grey.withAlpha(90)),
          buttonColor: AppColors.transparent,
        ),
        CustomButton(
          onTap: () {},
          text: 'Delete',
          textColor: Color(0xFFF43F5E),
          borderColor: Border.all(color: AppColors.grey.withAlpha(90)),
          buttonColor: AppColors.transparent,
        ),
      ],
    );
  }
}
