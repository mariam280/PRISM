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

  /// NOT USED YET. Path to the full screenshot this component was
  /// detected in — will be used together with [boundingBox] to crop out
  /// the component's real preview once that logic is built.
  final String? screenshotPath;

  /// NOT USED YET. The component's position within the screenshot
  /// (in pixels), e.g. {x, y, width, height} — will drive the crop.
  final ComponentBoundingBoxModel? boundingBox;
}
