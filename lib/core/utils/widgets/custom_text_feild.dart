import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hint,
    this.maxLines = 1,
    this.controller,
    this.fillColor,
    this.hintColor, this.onChanged,
  });
  final String? hint;
  final Color? hintColor;
  final int? maxLines;
  final Color? fillColor;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      maxLines: maxLines,
      onChanged: onChanged,
      style: AppStyles.regularInter14(
        context,
      ).copyWith(color: AppColors.kWhite),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: hint,
        filled: true,
        fillColor: AppColors.cardsColor,
        hintStyle: AppStyles.regularInter14(context),
        border: border(context),
        focusedBorder: border(context),
        enabledBorder: border(context),
      ),
    );
  }

  OutlineInputBorder border(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: AppColors.borderColor,
       // width: 0.5,
      ),
    );
  }
}
