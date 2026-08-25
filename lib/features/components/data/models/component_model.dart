import 'package:prism/features/components/data/models/component_bounding_box_model.dart';
import 'package:prism/features/components/data/models/component_spec_model.dart';

class ComponentModel {
  const ComponentModel({
    required this.name,
    required this.subtitleType,
    required this.isAiDetected,
    required this.specs,
    this.screenshotPath,
    this.boundingBox,
  });

  final String name;
  final String subtitleType;
  final bool isAiDetected;
  final List<ComponentSpecModel> specs;
  final String? screenshotPath;
  final ComponentBoundingBoxModel? boundingBox;

  factory ComponentModel.fromJson(
    Map<String, dynamic> json, {
    String? screenshotPath,
  }) {
    final box2d = json['box_2d'] as List?;
    return ComponentModel(
      name: json['name'] as String,
      subtitleType: json['subtitleType'] as String,
      isAiDetected: json['isAiDetected'] as bool,
      specs: (json['specs'] as List)
          .map((e) => ComponentSpecModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      screenshotPath: screenshotPath,
      boundingBox: box2d != null
          ? ComponentBoundingBoxModel.fromJson(box2d)
          : null,
    );
  }
}