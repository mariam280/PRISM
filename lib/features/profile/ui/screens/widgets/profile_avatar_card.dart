import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/function/show_snackbar.dart';
import 'package:prism/features/profile/ui/logic/profile_cubit/profile_cubit.dart';
import 'package:prism/features/profile/ui/logic/profile_cubit/profile_state.dart';
import 'package:prism/features/profile/ui/screens/widgets/profile_avatar_picker.dart';

class ProfileAvatarCard extends StatelessWidget {
  const ProfileAvatarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is ProfileFailure) {
          showSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        if (state is ProfileSuccess) {
          var profile = state.profile;
          return Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.cardsColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.borderColor, width: 1.115),
            ),
            child: Row(
              children: [
                state is ProfileImageUploading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ProfileAvatarPicker(imageUrl: profile.imageUrl),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profile.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.boldInter15(
                          context,
                        ).copyWith(color: AppColors.kWhite),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        profile.email,
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
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
