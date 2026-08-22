class ComponentSpecModel {
  const ComponentSpecModel({
    required this.label,
    required this.value,
    this.isEstimated = true,
  });

  final String label;
  final String value;
  final bool isEstimated;
}