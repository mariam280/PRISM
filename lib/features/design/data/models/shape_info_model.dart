class ShapeInfoModel {
  const ShapeInfoModel({
    required this.borderRadius,
    required this.shadow,
  });

  final String borderRadius;
  final String shadow;

  factory ShapeInfoModel.fromJson(Map<String, dynamic> json) {
    return ShapeInfoModel(
      borderRadius: json['borderRadius'] as String,
      shadow: json['shadow'] as String,
    );
  }
}