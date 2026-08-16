import 'package:flutter/material.dart';

class AppDimensions {
  static const double designWidth = 430.0;

  static double getWidth(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }

  static double responsive(BuildContext context, double value) {
    final screenWidth = getWidth(context);
    return (value / designWidth) * screenWidth;
  }
}