import 'package:flutter/material.dart';
import 'package:prism/features/design/data/models/design_model.dart';
import 'package:prism/features/design/ui/screens/widgets/color_pallete_section.dart';
import 'package:prism/features/design/ui/screens/widgets/shape_section.dart';
import 'package:prism/features/design/ui/screens/widgets/spacing_section.dart';
import 'package:prism/features/design/ui/screens/widgets/typography_section.dart';

class DesignTabBody extends StatelessWidget {
  const DesignTabBody({super.key, required this.design});

  final DesignModel design;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ColorPaletteSection(colors: design.colors),
          const SizedBox(height: 24),
          TypographySection(specsModel: design.typography),
          const SizedBox(height: 24),
          SpacingSection(values: design.spacing),
          const SizedBox(height: 24),
          ShapeSection(shapeModel: design.shape),
        ],
      ),
    );
  }
}