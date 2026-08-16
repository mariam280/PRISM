import 'package:flutter/material.dart';

class CustomSize extends StatelessWidget {
  const CustomSize({super.key, this.h, this.w});
  final double? h;
  final double? w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: h, width: w);
  }
}
