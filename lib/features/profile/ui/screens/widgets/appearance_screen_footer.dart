import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/cache/get_storage_helper.dart';
import 'package:prism/core/helpers/id.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/features/auth/data/repos/auth_repo.dart';
import 'package:prism/features/profile/ui/screens/widgets/profile_item.dart';

class AppearanceScreenFooter extends StatelessWidget {
  const AppearanceScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileItem(
      title: 'ACCOUNT',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: Text(
              'Change email',
              style: AppStyles.mediumInter13_2(context),
            ),
          ),  
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: Text(
              'Change password',
              style: AppStyles.mediumInter13_2(context),
            ),
          ),
          InkWell(
            onTap: () async {
              await getIt<AuthRepo>().signOut();
              await GetStorageHelper.setGetStorageData(
                key: dotenv.env['Has_Seen_Onboarding']!,
                value: false,
              );
              if (context.mounted) {
                GoRouter.of(context).go(AppRouters.welcome);
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
              child: Text(
                'Delete account',
                style: AppStyles.mediumInter13_2(
                  context,
                ).copyWith(color: Color(0xFFF43F5E)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
