import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/design/ui/screens/widgets/spacing_chip.dart';

class SpacingSection extends StatelessWidget {
  const SpacingSection({super.key, required this.values});

  final List<int> values;

  @override
  Widget build(BuildContext context) {
    final maxValue = values.reduce((a, b) => a > b ? a : b);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Spacing',
          style: AppStyles.semiBoldInter13_2(context)
        ),
        const CustomSize(h: 12),
        Row(
          children: [
            for (var i = 0; i < values.length; i++) ...[
              if (i != 0) const SizedBox(width: 10),
              Expanded(
                child: SpacingChip(value: values[i], maxValue: maxValue),
              ),
            ],
          ],
        ),
      ],
    );
  }
}
