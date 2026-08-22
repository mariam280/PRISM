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
  final bool isAiDetected;  /// true → "AI detected" badge (purple). false → "Estimated" badge (grey).
}