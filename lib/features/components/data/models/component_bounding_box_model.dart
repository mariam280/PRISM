import 'package:flutter/material.dart';

class ComponentBoundingBoxModel {
  const ComponentBoundingBoxModel({
    required this.yMin,
    required this.xMin,
    required this.yMax,
    required this.xMax,
  });

  /// All four values are 0-1000 (not pixels, not 0-1).
  final int yMin;
  final int xMin;
  final int yMax;
  final int xMax;

  factory ComponentBoundingBoxModel.fromJson(List<dynamic> box2d) {
    return ComponentBoundingBoxModel(
      yMin: box2d[0] as int,
      xMin: box2d[1] as int,
      yMax: box2d[2] as int,
      xMax: box2d[3] as int,
    );
  }

  Rect toPixelRect({required double imageWidth, required double imageHeight}) {
    return Rect.fromLTRB(
      (xMin / 1000) * imageWidth,
      (yMin / 1000) * imageHeight,
      (xMax / 1000) * imageWidth,
      (yMax / 1000) * imageHeight,
    );
  }
}