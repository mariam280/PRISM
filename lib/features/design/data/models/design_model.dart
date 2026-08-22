import 'package:prism/features/design/data/models/color_swatch_model.dart';
import 'package:prism/features/design/data/models/shape_info_model.dart';
import 'package:prism/features/design/data/models/typography_spec_model.dart';

class DesignModel {
  const DesignModel({
    required this.colors,
    required this.typography,
    required this.spacing,
    required this.shape,
  });

  final List<ColorSwatchModel> colors;
  final List<TypographySpecModel> typography;
  final List<int> spacing;     /// Spacing scale values in px, e.g. [8, 16, 24, 32].
  final ShapeInfoModel shape;
}