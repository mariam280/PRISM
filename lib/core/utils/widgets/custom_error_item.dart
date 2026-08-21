import 'package:flutter/material.dart';
import 'package:prism/core/helpers/app_padding.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/custom_card.dart';

class CustomErrorItem extends StatelessWidget {
  const CustomErrorItem({super.key, required this.errorMessage, this.onRetry});

  final String errorMessage;
  final void Function()? onRetry;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p20(context)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(AppPadding.p16(context)),
              decoration: BoxDecoration(
                color: AppColors.cardsColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.error_outline_rounded,
                color: AppColors.purbleColor,
                size: 32,
              ),
            ),
            SizedBox(height: AppPadding.p16(context)),
            Text(
              'Oops! Something went wrong.',
              textAlign: TextAlign.center,
              style: AppStyles.semiBoldInter14_2(
                context,
              ).copyWith(color: AppColors.kBlack),
            ),
            SizedBox(height: AppPadding.p8(context)),
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.regularInter14(
                context,
              )),
          ],
        ),
      ),
    );
  }
}
