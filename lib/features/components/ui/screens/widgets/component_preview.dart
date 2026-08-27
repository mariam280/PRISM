import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/features/components/data/models/component_model.dart';
import 'package:prism/features/components/ui/screens/widgets/component_crop_preview.dart';

class ComponentPreview extends StatelessWidget {
  const ComponentPreview({
    super.key,
    required this.componentModel,
    this.height = 80,
  });

  final ComponentModel componentModel;
  final double height;

  @override
  Widget build(BuildContext context) {
    final screenshotPath = componentModel.screenshotPath;
    final boundingBox = componentModel.boundingBox;

    if (screenshotPath != null && boundingBox != null) {
      return ComponentCropPreview(
        screenshotPath: screenshotPath,
        boundingBox: boundingBox,
        height: height,
      );
    }

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