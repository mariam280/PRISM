import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/home/data/services/image_picker_service.dart';
import 'package:prism/features/home/ui/screens/widgets/image_up_load_box.dart';
import 'package:prism/features/home/ui/screens/widgets/upload_image_footer_buttons.dart';
import 'package:prism/features/home/ui/screens/widgets/upload_image_header.dart';

class UploadImageScreenBody extends StatelessWidget {
  UploadImageScreenBody({super.key});

  final ImagePickerService _picker = ImagePickerService();

  Future<void> _pickAndGoToReview(
    BuildContext context,
    Future<File?> Function() pick,
  ) async {
    final imageFile = await pick();
    if (imageFile == null) return;
    if (!context.mounted) return;
    GoRouter.of(context).go(AppRouters.reviewScreenshot, extra: imageFile);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 28, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const UploadImageHeader(),
          const CustomSize(h: 28),
          ImageUpLoadedBox(
            onTap: () => _pickAndGoToReview(context, _picker.pickFromGallery),
          ),
          const Spacer(),
          UploadImageFooterButtons(
            onTapGallery: () => _pickAndGoToReview(context, _picker.pickFromGallery),
            onTapCamera: () => _pickAndGoToReview(context, _picker.pickFromCamera),
          ),
        ],
      ),
    );
  }
}