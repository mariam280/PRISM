import 'package:flutter/material.dart';

class ColorSwatchModel {
  const ColorSwatchModel({
    required this.name,
    required this.hex,
    required this.color,
    required this.isAiDetected,
  });

  final String name;
  final String hex;
  final Color color;

  /// true → "AI detected" badge (purple). false → "Estimated" badge (grey).
  final bool isAiDetected;

  factory ColorSwatchModel.fromJson(Map<String, dynamic> json) {
    final hex = json['hex'] as String;
    return ColorSwatchModel(
      name: json['name'] as String,
      hex: hex,
      color: _colorFromHex(hex),
      isAiDetected: json['isAiDetected'] as bool,
    );
  }

  /// Converts '#7C6CFF' (or '7C6CFF') → Color(0xFF7C6CFF).
  static Color _colorFromHex(String hex) {
    final cleaned = hex.replaceAll('#', '');
    return Color(int.parse('FF$cleaned', radix: 16));
  }

  Map<String, dynamic> toJson() {
    // We serialize `hex` (the original string), not `color` — no need
    // to reconstruct a hex string from the Color object since we still
    // have the source string right here.
    return {'name': name, 'hex': hex, 'isAiDetected': isAiDetected};
  }
}