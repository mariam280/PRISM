import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/design/data/models/color_swatch_model.dart';
import 'package:prism/features/design/ui/screens/widgets/color_row.dart';

/// "Color Palette" title + a card per color swatch.
class ColorPaletteSection extends StatelessWidget {
  const ColorPaletteSection({super.key, required this.colors});

  final List<ColorSwatchModel> colors;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Color Palette',
          style: AppStyles.semiBoldInter13_2(context)
        ),
        const CustomSize(h: 12),
        for (var i = 0; i < colors.length; i++) ...[
          if (i != 0) const SizedBox(height: 10),
          ColorRow(colorSwatch: colors[i]),
        ],
      ],
    );
  }
}

