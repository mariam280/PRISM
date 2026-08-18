import 'package:flutter/material.dart';
import 'package:prism/features/home/ui/screens/widgets/upload_image__footer_buttons.dart';
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
          Spacer(),
          UploadImageFooterButtons(onTapGallery: () {}, onTapCamera: () {}),
        ],
      ),
    );
  }
}
