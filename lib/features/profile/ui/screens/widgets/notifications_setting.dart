import 'package:flutter/material.dart';
import 'package:prism/features/profile/ui/screens/widgets/notification_item.dart';
import 'package:prism/features/profile/ui/screens/widgets/profile_item.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState extends State<NotificationSetting> {
  bool _analysisCompleteEnabled = true;
  bool _productUpdatesEnabled = true;
  bool _tipsHintsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return ProfileItem(
      title: 'NOTIFICATIONS',
      child: Column(
        children: [
          NotificationItem(
            title: 'Analysis complete',
            subtitle: 'When PRISM finishes analyzing',
            value: _analysisCompleteEnabled,
            onChanged: (newValue) {
              setState(() => _analysisCompleteEnabled = newValue);
            },
          ),
          NotificationItem(
            title: 'Product updates',
            subtitle: 'New features and improvements',
            value: _productUpdatesEnabled,
            onChanged: (newValue) {
              setState(() => _productUpdatesEnabled = newValue);
            },
          ),
          NotificationItem(
            title: 'Tips & hints',
            subtitle: 'Get the most out of PRISM',
            value: _tipsHintsEnabled,
            onChanged: (newValue) {
              setState(() => _tipsHintsEnabled = newValue);
            },
          ),
        ],
      ),
    );
  }
}
