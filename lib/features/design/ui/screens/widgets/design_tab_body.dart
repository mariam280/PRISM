import 'package:flutter/material.dart';
import 'package:prism/core/helpers/demo_lists.dart/dummy_design.dart';
import 'package:prism/features/design/ui/screens/widgets/color_pallete_section.dart';
import 'package:prism/features/design/ui/screens/widgets/shape_section.dart';
import 'package:prism/features/design/ui/screens/widgets/spacing_section.dart';
import 'package:prism/features/design/ui/screens/widgets/typography_section.dart';

class DesignTabBody extends StatelessWidget {
  const DesignTabBody({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
        ColorPaletteSection(colors: dummyDesign.colors),
        const SizedBox(height: 24),
        TypographySection(specsModel: dummyDesign.typography),
        const SizedBox(height: 24),
        SpacingSection(values: dummyDesign.spacing),
        const SizedBox(height: 24),
        ShapeSection(shapeModel: dummyDesign.shape),
      ],),
      
    );
  }
}