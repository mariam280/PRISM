import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/features/home/ui/screens/widgets/plus_icon.dart';

class CreateBlueprintCard extends StatelessWidget {
  const CreateBlueprintCard({super.key});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouters.uploadImage);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.cardsColor,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.purbleColor.withValues(alpha: 0.3),
                  width: 1.115,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  spacing: 14,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const PlusIcon(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Create Blueprint',
                            style: AppStyles.boldInter16(
                              context,
                            ).copyWith(color: AppColors.kWhite),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Upload a screenshot and let PRISM reveal the '
                            'system behind it.',
                            style: AppStyles.regularInter14(context),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(top: 0, right: 0, child: Image.asset(Assets.imagesMist)),
        ],
      ),
    );
  }
}
