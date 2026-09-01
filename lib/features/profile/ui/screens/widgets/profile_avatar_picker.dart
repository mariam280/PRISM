import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/features/profile/ui/logic/profile_cubit/profile_cubit.dart';

class ProfileAvatarPicker extends StatelessWidget {
  const ProfileAvatarPicker({super.key, required this.imageUrl});

  final String? imageUrl;

  Future<void> _pickImage(ProfileCubit cubit, ImageSource source) async {
    final picker = ImagePicker();

    final XFile? pickedImage = await picker.pickImage(source: source);

    if (pickedImage == null) return;

    final file = File(pickedImage.path);

    cubit.uploadProfileImage(file);
  }

  void _showImageSourceBottomSheet(BuildContext context) {
    final cubit = context.read<ProfileCubit>();
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.cardsColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(
                Icons.photo_library,
                color: AppColors.verydarkGrey,
              ),
              title: Text('Gallery', style: AppStyles.semiBoldInter11(context)),
              onTap: () {
                Navigator.pop(context);
                _pickImage(cubit, ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.camera_alt,
                color: AppColors.verydarkGrey,
              ),
              title: Text('Camera', style: AppStyles.semiBoldInter11(context)),
              onTap: () {
                Navigator.pop(context);
                _pickImage(cubit, ImageSource.camera);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showImageSourceBottomSheet(context),
      child: CircleAvatar(
        radius: 25,
        backgroundColor: AppColors.purbleColor,
        backgroundImage: imageUrl != null ? NetworkImage(imageUrl!) : null,
        child: imageUrl == null ? const CircleAvatar(radius: 23) : null,
      ),
    );
  }
}
