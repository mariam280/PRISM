import 'package:flutter/material.dart';
import 'package:prism/features/profile/ui/screens/widgets/profile_item.dart';
import 'package:prism/features/profile/ui/screens/widgets/profile_item_content.dart';

class StorageAbout extends StatelessWidget {
  const StorageAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
         ProfileItem(
              title: 'STORAGE',
              child: ProfileItemContent(
                  lable: 'Manage projects',
                  icon: Icons.folder_outlined,
              ),
            ),
            ProfileItem(
              title: 'ABOUT',
              child: Column(
                children: [
                  ProfileItemContent(
                      lable: 'About PRISM',
                      icon: Icons.info_outline,
                  ),
                  ProfileItemContent(
                      lable: 'Privacy',
                      icon: Icons.privacy_tip_outlined,
                  ),
                  ProfileItemContent(
                      lable: 'Terms',
                      icon: Icons.gavel_outlined,
                  ),
                  ProfileItemContent(
                      lable: 'App version 1.0.0',
                      icon: Icons.new_releases_outlined,
                  ),
                ],
              ),
            ),
      ],
    );
  }
}