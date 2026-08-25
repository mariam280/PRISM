import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:prism/features/components/data/models/component_bounding_box_model.dart';

class ComponentCropPreview extends StatefulWidget {
  const ComponentCropPreview({
    super.key,
    required this.screenshotPath,
    required this.boundingBox,
    this.height = 90,
  });

  final String screenshotPath;
  final ComponentBoundingBoxModel boundingBox;
  final double height;

  @override
  State<ComponentCropPreview> createState() => _ComponentCropPreviewState();
}

class _ComponentCropPreviewState extends State<ComponentCropPreview> {
  ui.Image? _image;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _loadImage() async {
    final bytes = await File(widget.screenshotPath).readAsBytes();
    final codec = await ui.instantiateImageCodec(bytes);
    final frame = await codec.getNextFrame();
    if (mounted) setState(() => _image = frame.image);
  }

  @override
  void dispose() {
    _image?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_image == null) {
      // Simple loading placeholder while the image decodes.
      return Container(
        height: widget.height,
        decoration: BoxDecoration(
          color: const Color(0xFF1C1C22),
          borderRadius: BorderRadius.circular(8),
        ),
      );
    }

    final srcRect = widget.boundingBox.toPixelRect(
      imageWidth: _image!.width.toDouble(),
      imageHeight: _image!.height.toDouble(),
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: widget.height,
        width: double.infinity,
        child: CustomPaint(
          painter: _CropPainter(image: _image!, srcRect: srcRect),
        ),
      ),
    );
  }
}

class _CropPainter extends CustomPainter {
  _CropPainter({required this.image, required this.srcRect});

  final ui.Image image;
  final Rect srcRect;

  @override
  void paint(Canvas canvas, Size size) {
    final dstRect = Offset.zero & size;
    canvas.drawImageRect(image, srcRect, dstRect, Paint());
  }

  @override
  bool shouldRepaint(covariant _CropPainter oldDelegate) =>
      oldDelegate.image != image || oldDelegate.srcRect != srcRect;
}