import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class ProfileAvatarCard extends StatelessWidget {
  const ProfileAvatarCard({
    super.key,
    required this.image,
    required this.name,
    required this.email,
  });

  final String image;
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardsColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderColor, width: 1.115),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.purbleColor,
            child: CircleAvatar(radius: 23),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.boldInter15(
                    context,
                  ).copyWith(color: AppColors.kWhite),
                ),
                const SizedBox(height: 3),
                Text(
                  email,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.regularInter13(
                    context,
                  ).copyWith(color: AppColors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
