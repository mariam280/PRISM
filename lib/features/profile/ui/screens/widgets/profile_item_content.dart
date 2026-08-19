import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/features/profile/data/models/profile_item_model.dart';

class ProfileItemContent extends StatelessWidget {
  const ProfileItemContent({super.key, required this.profileItemModel});
  final ProfileItemModel profileItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      child: Row(
        children: [
          Icon(profileItemModel.icon, size: 18, color: AppColors.grey),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              profileItemModel.lable,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.mediumInter13_2(context),
            ),
          ),
        ],
      ),
    );
  }
}
