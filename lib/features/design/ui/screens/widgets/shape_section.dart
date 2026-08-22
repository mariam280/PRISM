import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/design/data/models/shape_info_model.dart';
import 'package:prism/features/design/ui/screens/widgets/shape_card.dart';

class ShapeSection extends StatelessWidget {
  const ShapeSection({super.key, required this.shapeModel});

  final ShapeInfoModel shapeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shape',
          style: AppStyles.semiBoldInter13_2(context)
        ),
        const CustomSize(h: 12),
        Row(
          children: [
            Expanded(
              child: ShapeCard(label: 'Border Radius', value: shapeModel.borderRadius),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ShapeCard(label: 'Shadow', value: shapeModel.shadow),
            ),
          ],
        ),
      ],
    );
  }
}
