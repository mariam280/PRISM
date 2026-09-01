import 'package:flutter/material.dart';
import 'package:prism/core/utils/widgets/appbar_header.dart';
import 'package:prism/features/profile/ui/screens/widgets/setting_screen_footer.dart';
import 'package:prism/features/profile/ui/screens/widgets/notifications_setting.dart';

class SettingScreenBody extends StatelessWidget {
  const SettingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 28),
      child: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppbarHeader(title: 'Setting'),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          const NotificationSetting(),
          const SettingScreenFooter(),
        ],
      ),
    );
  }
}
