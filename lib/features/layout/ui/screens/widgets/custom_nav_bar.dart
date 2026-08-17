import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/features/layout/ui/screens/widgets/main_nav_icon_item.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });
  final Function(int) onTap;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 80,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.transparent,
          border: Border(
            top: BorderSide(
              color: AppColors.grey.withValues(alpha: 0.7),
              width: 0.3,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MainNavIconItem(
                onTap: () => onTap(0),
                text: 'Home',
                icon: Icons.home_outlined,
                isActive: currentIndex == 0,
              ),
              MainNavIconItem(
                onTap: () => onTap(1),
                text: 'Projects',
                icon: Icons.grid_view_sharp,
                isActive: currentIndex == 1,
              ),
              MainNavIconItem(
                onTap: () => onTap(3),
                text: 'Profile',
                icon: Icons.person,
                isActive: currentIndex == 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
