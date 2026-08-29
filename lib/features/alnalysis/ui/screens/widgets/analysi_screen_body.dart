import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:prism/core/helpers/demo_lists.dart/analysis_steps_list.dart';
import 'package:prism/core/helpers/id.dart';
import 'package:prism/core/routing/app_routers.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/function/show_snackbar.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/alnalysis/data/models/analysis_result_model.dart';
import 'package:prism/features/alnalysis/ui/logic/cubit/analysis_state.dart';
import 'package:prism/features/alnalysis/ui/logic/cubit/snalysis_cubit.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/analysis_error_view.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/analyzing_steps_list.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';
import 'package:prism/features/projects/data/repos/project_repo.dart';

class AnalysiScreenBody extends StatefulWidget {
  const AnalysiScreenBody({super.key});

  @override
  State<AnalysiScreenBody> createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends State<AnalysiScreenBody> {
  bool _animationDone = false;
  AnalysisResultModel? _pendingResult;
  RecentProjectModel? _pendingProject;

  void _onAnimationCompleted() {
    _animationDone = true;
    if (_pendingResult != null && _pendingProject != null) {
      _navigateToBlueprint(_pendingResult!, _pendingProject!);
    }
  }

  void _onAnalysisSuccess(
    AnalysisResultModel result,
    RecentProjectModel project,
  ) {
    if (_animationDone) {
      _navigateToBlueprint(result, project);
    } else {
      _pendingResult = result;
      _pendingProject = project;
    }
  }

  void _navigateToBlueprint(
    AnalysisResultModel result,
    RecentProjectModel project,
  ) {
    final imageFile = GoRouterState.of(context).extra as File;
    getIt<ProjectRepo>()
        .saveProject(imageFile: imageFile, result: result, project: project)
        .then((saveResult) {
          saveResult.fold((failure) {
            if (mounted) {
              showSnackBar(
                context,
                'Could not save project: ${failure.errorMessage}');
            }
          }, (_) {});
        });

    GoRouter.of(
      context,
    ).go(AppRouters.blueprint, extra: {'result': result, 'project': project});
  }

  @override
  Widget build(BuildContext context) {
    final imageFile = GoRouterState.of(context).extra as File;
    return BlocListener<AnalysisCubit, AnalysisState>(
      listener: (context, state) {
        if (state is AnalysisSuccess) {
          _onAnalysisSuccess(state.result, state.project);
        }
      },
      child: BlocBuilder<AnalysisCubit, AnalysisState>(
        builder: (context, state) {
          if (state is AnalysisError) {
            return AnalysisErrorView(
              message: state.message,
              onRetry: () => context.read<AnalysisCubit>().analyzeScreenshot(
                imageFile,
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Lottie.asset('assets/animation/Document_OCR_Scan.json'),
                const CustomSize(h: 20),
                Text(
                  'Analyzing your interface',
                  style: AppStyles.boldInter22(context),
                ),
                const CustomSize(h: 6),
                Text(
                  'PRISM is uncovering the system behind your screen.',
                  style: AppStyles.regularInter14(context),
                ),
                const CustomSize(h: 28),
                AnalyzingStepsList(
                  steps: steps,
                  onCompleted: _onAnimationCompleted,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
