import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/size.dart';

class MainNavIconItem extends StatelessWidget {
  const MainNavIconItem({
    super.key,
    required this.icon,
    required this.text,
    required this.isActive,
    this.onTap,
  });
  final IconData icon;
  final String text;
  final bool isActive;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: isActive ? AppColors.purbleColor : AppColors.grey,
            size: 28,
          ),
          Text(
            text,
            style: AppStyles.semiBoldInter10(context).copyWith(
              color: isActive ? AppColors.purbleColor : AppColors.grey,
            ),
          ),
          if (isActive)
            Column(
              children: [
                CustomSize(h: 8),
                Container(
                  width: 3.99,
                  height: 3.99,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF7C6CFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0xFF7C6CFF),
                        blurRadius: 6,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
