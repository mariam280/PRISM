import 'package:flutter/material.dart';
import 'package:prism/core/cache/get_storage_helper.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/home/ui/screens/widgets/create_blueprint_card.dart';
import 'package:prism/features/home/ui/screens/widgets/recent_projects_list.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final fullName =
        GetStorageHelper.getGetStorageData(key: 'userName') ?? 'User';
    final firstName = fullName.trim().split(' ').first;
    final imageurl = Supabase
        .instance
        .client
        .auth
        .currentUser
        ?.userMetadata?['avatar_url']
        ?.toString();
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(Assets.imagesPrismLogo, width: 24, height: 24),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.purbleColor,
                  backgroundImage: imageurl != null
                      ? NetworkImage(imageurl)
                      : null,
                  child: imageurl == null
                      ? const CircleAvatar(radius: 23)
                      : null,
                ),
              ],
            ),
            CustomSize(h: 16),
            Text(
              'Welcome, $firstName',
              style: AppStyles.boldInter22(context),
            ),
            Text(
              'Ready to uncover a new interface?',
              style: AppStyles.regularInter14(context),
            ),
            const CustomSize(h: 24),
            CreateBlueprintCard(),
            const CustomSize(h: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Projects',
                  style: AppStyles.semiBoldInter14_2(context),
                ),
                Text('See all', style: AppStyles.mediumInter13_1(context)),
              ],
            ),
            const CustomSize(h: 16),
            RecentProjectsList(),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.2),
          ],
        ),
      ),
    );
  }
}
