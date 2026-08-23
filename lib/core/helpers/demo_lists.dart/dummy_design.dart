import 'package:flutter/material.dart';
import 'package:prism/features/design/data/models/color_swatch_model.dart';
import 'package:prism/features/design/data/models/design_model.dart';
import 'package:prism/features/design/data/models/shape_info_model.dart';
import 'package:prism/features/design/data/models/typography_spec_model.dart';

const dummyDesign = DesignModel(
  colors: [
    ColorSwatchModel(
      name: 'Primary',
      hex: '#7C6CFF',
      color: Color(0xFF7C6CFF),
      isAiDetected: true,
    ),
    ColorSwatchModel(
      name: 'Background',
      hex: '#F8F8FA',
      color: Color(0xFFF8F8FA),
      isAiDetected: true,
    ),
    ColorSwatchModel(
      name: 'Text',
      hex: '#18181B',
      color: Color(0xFF18181B),
      isAiDetected: true,
    ),
    ColorSwatchModel(
      name: 'Secondary',
      hex: '#A1A1AA',
      color: Color(0xFFA1A1AA),
      isAiDetected: false,
    ),
    ColorSwatchModel(
      name: 'Surface',
      hex: '#FFFFFF',
      color: Color(0xFFFFFFFF),
      isAiDetected: false,
    ),
    ColorSwatchModel(
      name: 'Border',
      hex: '#E5E5E5',
      color: Color(0xFFE5E5E5),
      isAiDetected: false,
    ),
  ],
  typography: [
    TypographySpecModel(
      label: 'Heading',
      spec: 'Inter / Bold / 24 px',
      isAiDetected: false,
    ),
    TypographySpecModel(
      label: 'Body',
      spec: 'Inter / Regular / 14 px',
      isAiDetected: false,
    ),
    TypographySpecModel(
      label: 'Caption',
      spec: 'Inter / Medium / 12 px',
      isAiDetected: false,
    ),
  ],
  spacing: [2, 4, 6, 8, 16, 24, 32],
  shape: ShapeInfoModel(borderRadius: '12–16 px', shadow: 'Subtle'),
);
