import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/function/show_snackbar.dart';
import 'package:prism/features/components/data/models/component_model.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({super.key, required this.componentModel});
  final ComponentModel componentModel;

  void _copySpecs(BuildContext context) {
    final text = componentModel.specs
        .map((spec) => '${spec.label}: ${spec.value}')
        .join('\n');
    Clipboard.setData(ClipboardData(text: text));
    showSnackBar(context, 'Specs copied');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () => _copySpecs(context),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          side: const BorderSide(color: Color(0xFF29292F), width: 1.115),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.copy_outlined, size: 15, color: AppColors.kWhite),
            const SizedBox(width: 8),
            Text(
              'Copy specs',
              style: AppStyles.semiBoldInter13(
                context,
              ).copyWith(color: AppColors.kWhite),
            ),
          ],
        ),
      ),
    );
  }
}
