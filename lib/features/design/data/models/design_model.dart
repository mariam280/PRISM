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

  /// Spacing scale values in px, e.g. [8, 16, 24, 32].
  final List<int> spacing;
  final ShapeInfoModel shape;

  factory DesignModel.fromJson(Map<String, dynamic> json) {
    return DesignModel(
      colors: (json['colors'] as List)
          .map((e) => ColorSwatchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      typography: (json['typography'] as List)
          .map((e) => TypographySpecModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      spacing: List<int>.from(json['spacing'] as List),
      shape: ShapeInfoModel.fromJson(json['shape'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'colors': colors.map((e) => e.toJson()).toList(),
      'typography': typography.map((e) => e.toJson()).toList(),
      'spacing': spacing,
      'shape': shape.toJson(),
    };
  }
}