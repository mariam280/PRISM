import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/features/profile/ui/screens/widgets/appearance_buttons_chip.dart';

class AppearanceButtonsChipRow extends StatelessWidget {
  const AppearanceButtonsChipRow({
    super.key,
    required this.selected,
    required this.onChanged,
    this.filters = const ['Dark', 'Light', 'System'],
  });

  final String selected;
  final ValueChanged<String> onChanged;
  final List<String> filters;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('APPEARANCE', style: AppStyles.semiBoldInter11(context)),
        Container(
          height: 70,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: AppColors.cardsColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.12, color: AppColors.borderColor),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: Row(
            spacing: 2,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (final filter in filters) ...[
                Expanded(
                  child: AppearanceButtonsChip(
                    label: filter,
                    isSelected: filter == selected,
                    onTap: () => onChanged(filter),
                  ),
                ),
                if (filter != filters.last) const SizedBox(width: 8),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
