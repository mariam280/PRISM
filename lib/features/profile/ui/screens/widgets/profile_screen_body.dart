import 'package:flutter/material.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/features/profile/ui/screens/widgets/account_prefernces_ai.dart';
import 'package:prism/features/profile/ui/screens/widgets/profile_avatar_card.dart';
import 'package:prism/features/profile/ui/screens/widgets/storage_about.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Profile', style: AppStyles.boldInter22(context)),
            ProfileAvatarCard(
              image: Assets.imagesPrismLogo,
              name: 'Mariam Ibrahim',
              email: 'mariam123@gmail.com',
            ),
            AccountPreferncesAi(),
            StorageAbout(),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.17),
          ],
        ),
      ),
    );
  }
}
