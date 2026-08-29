class TypographySpecModel {
  const TypographySpecModel({
    required this.label,
    required this.spec,
    required this.isAiDetected,
  });

  final String label;
  final String spec;
  final bool isAiDetected;

  factory TypographySpecModel.fromJson(Map<String, dynamic> json) {
    return TypographySpecModel(
      label: json['label'] as String,
      spec: json['spec'] as String,
      isAiDetected: json['isAiDetected'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {'label': label, 'spec': spec, 'isAiDetected': isAiDetected};
  }
}