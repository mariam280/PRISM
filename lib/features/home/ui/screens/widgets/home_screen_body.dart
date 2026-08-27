import 'package:flutter/material.dart';
import 'package:prism/core/cache/get_storage_helper.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/home/ui/screens/widgets/create_blueprint_card.dart';
import 'package:prism/features/home/ui/screens/widgets/recent_projects_list.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final name = GetStorageHelper.getGetStorageData(key: 'userName');
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Assets.imagesPrismLogo, width: 24, height: 24),
            CustomSize(h: 16),
            Text('Good afternoon, $name', style: AppStyles.boldInter22(context)),
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
