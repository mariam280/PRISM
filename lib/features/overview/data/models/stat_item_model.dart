class StatItemModel {
  const StatItemModel({required this.value, required this.label});

  final int value;
  final String label;

  factory StatItemModel.fromJson(Map<String, dynamic> json) {
    return StatItemModel(
      value: json['value'] as int,
      label: json['label'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'value': value, 'label': label};
  }
}