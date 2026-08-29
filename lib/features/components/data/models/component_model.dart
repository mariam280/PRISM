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

  /// Local-only — NOT stored in Supabase. This holds a path/URL for
  /// wherever the source screenshot lives *at parse time* (a local
  /// `File` right after analysis, or later a network image URL once
  /// re-hydrated from a saved project). It's re-supplied by whoever
  /// calls `fromJson`, never persisted as part of this component's own
  /// JSON — see `toJson` below.
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

  Map<String, dynamic> toJson() {
    // `screenshotPath` is deliberately excluded — it's a local file path
    // at analysis time, meaningless once stored remotely. The project's
    // `image_url` (stored once, at the project level) is what gets
    // passed back in as `screenshotPath` when re-hydrating later.
    return {
      'name': name,
      'subtitleType': subtitleType,
      'isAiDetected': isAiDetected,
      'specs': specs.map((e) => e.toJson()).toList(),
      if (boundingBox != null) 'box_2d': boundingBox!.toJson(),
    };
  }
}