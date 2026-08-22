import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/features/components/data/models/component_model.dart';

class ComponentPreview extends StatelessWidget {
  const ComponentPreview({
    super.key,
    required this.componentModel,
    this.height = 70,
  });

  final ComponentModel componentModel;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        Assets.imagesNavBarPlaceHolder,
        height: height,
        width: double.infinity,
        fit: BoxFit.contain,
      ),
    );
  }
}



/// Preview shown for a component — currently always a default
/// placeholder image.
///
/// FUTURE: once components carry a real [ComponentModel.screenshotPath]
/// + [ComponentModel.boundingBox], this widget should crop that exact
/// region out of the screenshot instead of showing the placeholder —
/// something like:
///
/// ```dart
/// if (component.screenshotPath != null && component.boundingBox != null) {
///   return _CroppedComponentImage(
///     imagePath: component.screenshotPath!,
///     box: component.boundingBox!,
///   );
/// }
/// ```