import 'dart:io';

import 'package:flutter/material.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({
    super.key,
    required this.path,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
  });

  final String path;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;

  bool get _isNetworkUrl =>
      path.startsWith('http://') || path.startsWith('https://');

  @override
  Widget build(BuildContext context) {
    final image = _isNetworkUrl
        ? Image.network(
            path,
            width: width,
            height: height,
            fit: fit,
            errorBuilder: (_,_, _) => _placeholder(),
          )
        : Image.file(
            File(path),
            width: width,
            height: height,
            fit: fit,
            errorBuilder: (_, _, _) => _placeholder(),
          );

    if (borderRadius == null) return image;
    return ClipRRect(borderRadius: borderRadius!, child: image);
  }

  Widget _placeholder() {
    return Container(
      width: width,
      height: height,
      color: const Color(0xFF1C1C22),
      alignment: Alignment.center,
      child: const Icon(Icons.image_not_supported_outlined, color: Color(0xFF29292F)),
    );
  }
}