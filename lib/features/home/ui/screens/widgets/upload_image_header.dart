import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/appbar_header.dart';

class UploadImageHeader extends StatelessWidget {
  const UploadImageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        const AppbarHeader(title: 'Create a Blueprint'),
        Text(
          'Start with a screenshot. PRISM will uncover the design system behind it.',
          style: AppStyles.regularInter14(context),
        ),
      ],
    );
  }
}
