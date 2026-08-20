import 'package:flutter/material.dart';
import 'package:prism/features/profile/ui/screens/widgets/appearance_screen_footer.dart';
import 'package:prism/features/profile/ui/screens/widgets/appearance_screen_header.dart';
import 'package:prism/features/profile/ui/screens/widgets/notifications_setting.dart';

class AppearanceScreenBody extends StatelessWidget {
  const AppearanceScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 28),
      child: const Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppearanceScreenHeader(),
          NotificationSetting(),
          AppearanceScreenFooter(),
        ],
      ),
    );
  }
}
