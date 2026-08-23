import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/function/show_snackbar.dart';
import 'package:prism/core/utils/widgets/custom_card.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/design/data/models/color_swatch_model.dart';
import 'package:prism/features/design/ui/screens/widgets/detection_badge.dart';

class ColorRow extends StatelessWidget {
  const ColorRow({super.key, required this.colorSwatch});

  final ColorSwatchModel colorSwatch;

  void _copyHex(BuildContext context) {
    Clipboard.setData(ClipboardData(text: colorSwatch.hex));
    showSnackBar(context, '${colorSwatch.hex} copied');
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: colorSwatch.color,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.borderColor, width: 1.115),
              ),
            ),
            const CustomSize(w: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    colorSwatch.name,
                    style: AppStyles.semiBoldInter13_2(context),
                  ),
                  const CustomSize(h: 2),
                  Text(
                    colorSwatch.hex,
                    style: AppStyles.regularInter11(
                      context,
                    ).copyWith(color: AppColors.grey),
                  ),
                ],
              ),
            ),
            const CustomSize(w: 8),
            DetectionBadge(isAiDetected: colorSwatch.isAiDetected),
            const CustomSize(w: 8),
            InkWell(
              onTap: () => _copyHex(context),
              borderRadius: BorderRadius.circular(6),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Icon(
                  Icons.copy_outlined,
                  size: 15,
                  color: AppColors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
