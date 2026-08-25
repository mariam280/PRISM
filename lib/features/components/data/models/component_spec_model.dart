class ComponentSpecModel {
  const ComponentSpecModel({
    required this.label,
    required this.value,
    this.isEstimated = true,
  });

  final String label;
  final String value;
  final bool isEstimated;

  factory ComponentSpecModel.fromJson(Map<String, dynamic> json) {
    return ComponentSpecModel(
      label: json['label'] as String,
      value: json['value'] as String,
      isEstimated: json['isEstimated'] as bool? ?? true,
    );
  }
}