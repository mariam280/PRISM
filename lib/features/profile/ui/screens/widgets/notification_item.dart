import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/profile/ui/screens/widgets/custom_switch.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, required this.title, required this.subtitle, required this.value, required this.onChanged});
    final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStyles.mediumInter13_2(context)
                ),
                const CustomSize(h: 2),
                Text(
                  subtitle,
                  style: AppStyles.regularInter11(context)
                ),
              ],
            ),
          ),
          const CustomSize(h: 12),
          CustomSwitch(value: value, onChanged: onChanged),
        ],
      ),
    );
  }
}
