import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hint,
    this.isObscure = false,
    this.keyboardType,
    this.maxLines = 1,
    this.validator,
    this.controller,
    this.fillColor, this.enabled,
  });
  final String? hint;
  final bool isObscure;
  final TextInputType? keyboardType;
  final int? maxLines;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Color? fillColor;
  final bool? enabled;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      enabled: enabled ?? true,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      maxLines: maxLines,
      keyboardType: keyboardType,
      obscureText: isObscure,
      style: AppStyles.regularInter14(
        context,
      ).copyWith(color: AppColors.kWhite2),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.regularInter14(context),
        filled: true,
        fillColor: AppColors.cardsColor,
        border: border(),
        focusedBorder: border(),
        enabledBorder: border(),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.borderColor),
    );
  }
}
