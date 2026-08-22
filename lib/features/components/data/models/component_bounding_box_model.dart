
/// NOT USED YET. Pixel position of a component within its source
/// screenshot — reserved for the future crop-preview feature.
class ComponentBoundingBoxModel {
  const ComponentBoundingBoxModel({
    required this.x,
    required this.y,
    required this.width,
    required this.height,
  });

  final double x;
  final double y;
  final double width;
  final double height;
}