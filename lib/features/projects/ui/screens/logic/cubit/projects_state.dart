import 'package:prism/features/home/data/models/recent_project_model.dart';

sealed class ProjectsState {}

class ProjectsInitial extends ProjectsState {}

class ProjectsLoading extends ProjectsState {}

class ProjectsSuccess extends ProjectsState {
  ProjectsSuccess(this.projects);
  final List<RecentProjectModel> projects;
}

class ProjectsError extends ProjectsState {
  ProjectsError(this.message);
  final String message;
}