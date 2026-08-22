import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/design/data/models/typography_spec_model.dart';
import 'package:prism/features/design/ui/screens/widgets/typography_row.dart';

class TypographySection extends StatelessWidget {
  const TypographySection({super.key, required this.specsModel});

  final List<TypographySpecModel> specsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Typography',
          style: AppStyles.semiBoldInter13_2(context)
        ),
        const CustomSize(h: 12),
        for (var i = 0; i < specsModel.length; i++) ...[
          if (i != 0) const SizedBox(height: 10),
          TypographyRow(specModel: specsModel[i]),
        ],
      ],
    );
  }
}
