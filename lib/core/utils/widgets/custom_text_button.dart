import 'package:flutter/material.dart';
import 'package:prism/core/helpers/app_padding.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.side,
    this.textColor,
  });
  final String text;
  final Function() onPressed;
  final BorderSide? side;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(side: side ?? BorderSide.none),
        padding: EdgeInsets.zero,
        minimumSize: Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p4(context)),
        child: Text(
          text,
          style: AppStyles.regularInter13(
            context,
          ).copyWith(color: textColor ?? AppColors.purbleColor),
        ),
      ),
    );
  }
}
