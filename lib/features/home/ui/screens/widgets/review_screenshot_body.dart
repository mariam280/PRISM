import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/utils/widgets/appbar_header.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/home/ui/screens/widgets/analysis_info_note.dart';
import 'package:prism/features/home/ui/screens/widgets/review_screenshot_box.dart';
import 'package:prism/features/home/ui/screens/widgets/review_screenshot_footer_buttons.dart';

class ReviewScreenshotBody extends StatelessWidget {
  const ReviewScreenshotBody({super.key});

  @override
  Widget build(BuildContext context) {
    final imageFile = GoRouterState.of(context).extra as File;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 28, bottom: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AppbarHeader(title: 'Review Screenshot'),
            const CustomSize(h: 28),
            ReviewScreenshotBox(imageFile: imageFile),
            const CustomSize(h: 13),
            AnalysisInfoNote(),
            const CustomSize(h: 24),
            ReviewScreenshotFooterButtons(
              onTapAnalysis: () {
                GoRouter.of(context).go(AppRouters.analysis, extra: imageFile);
              },
              onTapChangePhoto: () {
                GoRouter.of(context).go(AppRouters.uploadImage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
