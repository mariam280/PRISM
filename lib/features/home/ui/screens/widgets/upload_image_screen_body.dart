import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/home/ui/screens/widgets/image_up_load_box.dart';
import 'package:prism/features/home/ui/screens/widgets/upload_image_footer_buttons.dart';
import 'package:prism/features/home/ui/screens/widgets/upload_image_header.dart';

class UploadImageScreenBody extends StatelessWidget {
  const UploadImageScreenBody({super.key});

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
            onTap: () {
              GoRouter.of(context).push(AppRouters.reviewScreenshot);
            },
          ),
          Spacer(),
          UploadImageFooterButtons(onTapGallery: () {}, onTapCamera: () {}),
        ],
      ),
    );
  }
}
