import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';
import 'package:prism/features/home/ui/screens/widgets/error_state_view.dart';
import 'package:prism/features/home/ui/screens/widgets/loading_state_view.dart';
import 'package:prism/features/projects/ui/screens/logic/cubit/projects_cubit.dart';
import 'package:prism/features/projects/ui/screens/logic/cubit/projects_state.dart';
import 'package:prism/features/projects/ui/screens/widgets/open_project_details.dart';
import 'package:prism/features/projects/ui/screens/widgets/project_item.dart';

class ProjectItemList extends StatelessWidget {
  const ProjectItemList({
    super.key,
    required this.filter,
    required this.searchQuery,
  });

  final String filter;
  final String searchQuery;
  static const _recentCount = 6;

  List<RecentProjectModel> _applyFilters(List<RecentProjectModel> projects) {
    var result = projects;

    switch (filter) {
      case 'Recent':
        result = result.take(_recentCount).toList();
      case 'Favorites':
        result = result.where((p) => p.isFavorite).toList();
      case 'All':
      default:
        break;
    }

    if (searchQuery.trim().isNotEmpty) {
      final query = searchQuery.trim().toLowerCase();
      result = result
          .where((p) => p.name.toLowerCase().contains(query))
          .toList();
    }

    return result;
  }

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

        final projects = _applyFilters((state as ProjectsSuccess).projects);

        if (projects.isEmpty) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 32),
            child: Center(child: Text('No projects match this.')),
          );
        }

        return GridView.builder(
          itemCount: projects.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            final project = projects[index];
            return ProjectItem(
              projectModel: project,
              onTap: () => openProjectDetails(context, project),
            );
          },
        );
      },
    );
  }
}