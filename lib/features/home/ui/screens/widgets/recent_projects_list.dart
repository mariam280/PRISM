import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/features/home/ui/screens/widgets/error_state_view.dart';
import 'package:prism/features/home/ui/screens/widgets/loading_state_view.dart';
import 'package:prism/features/home/ui/screens/widgets/recent_project_item.dart';
import 'package:prism/features/projects/ui/screens/logic/cubit/projects_cubit.dart';
import 'package:prism/features/projects/ui/screens/logic/cubit/projects_state.dart';
import 'package:prism/features/projects/ui/screens/widgets/open_project_details.dart';

class RecentProjectsList extends StatelessWidget {
  const RecentProjectsList({super.key});

  static const _homeLimit = 6;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsCubit, ProjectsState>(
      builder: (context, state) {
        if (state is ProjectsLoading || state is ProjectsInitial) {
          return const LoadingStateView(message: 'Loading your projects...');
        }

        if (state is ProjectsError) {
          return ErrorStateView(
            message: state.message,
            onRetry: () => context.read<ProjectsCubit>().getProjects(),
          );
        }

        final projects = (state as ProjectsSuccess).projects
            .take(_homeLimit)
            .toList();

        if (projects.isEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Center(
              child: Text(
                'No projects yet — analyze a screen to get started.',
                textAlign: TextAlign.center,
                style: AppStyles.regularInter13(context).copyWith(
                  color: AppColors.grey,
                ),
              ),
            ),
          );
        }

        return ListView.builder(
          itemCount: projects.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final project = projects[index];
            return RecentProjectItem(
              onTap: () => openProjectDetails(context, project),
              recentProject: project,
            );
          },
        );
      },
    );
  }
}