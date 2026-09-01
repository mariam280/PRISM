import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prism/core/helpers/id.dart';
import 'package:prism/core/utils/widgets/custom_background.dart';
import 'package:prism/features/profile/data/repos/profile_repo.dart';
import 'package:prism/features/profile/ui/logic/profile_cubit/profile_cubit.dart';
import 'package:prism/features/profile/ui/screens/widgets/profile_screen_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: SafeArea(
        child: BlocProvider(
          create: (context) => ProfileCubit(getIt<ProfileRepo>())..getProfile(),
          child: const ProfileScreenBody(),
        ),
      ),
    );
  }
}
