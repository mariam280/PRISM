import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';

class ProfileItemContent extends StatelessWidget {
  const ProfileItemContent({super.key, l, required this.lable, required this.icon});
   final String lable;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      child: Row(
        children: [
          Icon(icon, size: 18, color: AppColors.grey),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              lable,
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
