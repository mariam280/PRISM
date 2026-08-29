import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prism/features/projects/data/repos/project_repo.dart';
import 'package:prism/features/projects/ui/screens/logic/cubit/projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit(this.projectRepo) : super(ProjectsInitial());

  final ProjectRepo projectRepo;

  Future<void> fetchProjects({int? limit}) async {
    emit(ProjectsLoading());

    final result = await projectRepo.getProjects(limit: limit);

    result.fold(
      (failure) => emit(ProjectsError(failure.errorMessage)),
      (projects) => emit(ProjectsSuccess(projects)),
    );
  }
}