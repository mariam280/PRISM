import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/design/ui/screens/widgets/spacing_chip.dart';

class SpacingSection extends StatelessWidget {
  const SpacingSection({super.key, required this.values});

  final List<int> values;

  /// How many chips fit per row before wrapping to a new line.
  static const _columns = 4;
  static const _spacing = 10.0;

  @override
  Widget build(BuildContext context) {
    final maxValue = values.reduce((a, b) => a > b ? a : b);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Spacing', style: AppStyles.semiBoldInter13_2(context)),
        const CustomSize(h: 12),
        LayoutBuilder(
          builder: (context, constraints) {
            final itemWidth =
                (constraints.maxWidth - (_columns - 1) * _spacing) / _columns;
            return Wrap(
              spacing: _spacing,
              runSpacing: _spacing,
              children: [
                for (final value in values)
                  SizedBox(
                    width: itemWidth,
                    child: SpacingChip(value: value, maxValue: maxValue),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
