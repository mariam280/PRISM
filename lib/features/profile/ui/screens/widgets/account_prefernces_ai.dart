import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/features/profile/ui/screens/widgets/profile_item.dart';
import 'package:prism/features/profile/ui/screens/widgets/profile_item_content.dart';

class AccountPreferncesAi extends StatelessWidget {
  const AccountPreferncesAi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        ProfileItem(
          title: 'ACCOUNT',
          child: ProfileItemContent(
            lable: 'Personal information',
            icon: Icons.badge_outlined,
          ),
        ),
        ProfileItem(
          title: 'Setting',
          child: InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRouters.setting);
            },
            child: ProfileItemContent(
              lable: 'Setting',
              icon: Icons.settings_outlined,
            ),
          ),
        ),
        ProfileItem(
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
