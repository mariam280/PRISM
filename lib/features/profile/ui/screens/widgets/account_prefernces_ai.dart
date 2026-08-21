import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/utils/widgets/custom_card.dart';
import 'package:prism/features/profile/ui/screens/widgets/profile_item_content.dart';

class AccountPreferncesAi extends StatelessWidget {
  const AccountPreferncesAi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        CustomCard(
          title: 'ACCOUNT',
          child: ProfileItemContent(
            lable: 'Personal information',
            icon: Icons.badge_outlined,
          ),
        ),
        CustomCard(
          title: 'PREFERENCES',
          child: InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRouters.appearance);
            },
            child: Column(
              children: [
                ProfileItemContent(
                  lable: 'Appearance',
                  icon: Icons.dark_mode_outlined,
                ),
                ProfileItemContent(
                  lable: 'Notifications',
                  icon: Icons.notifications_outlined,
                ),
              ],
            ),
          ),
        ),
        CustomCard(
          title: 'AI',
          child: ProfileItemContent(
            lable: 'Analysis preferences',
            icon: Icons.auto_awesome_outlined,
          ),
        ),
      ],
    );
  }
}
