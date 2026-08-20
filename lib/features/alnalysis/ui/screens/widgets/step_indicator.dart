import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/features/alnalysis/data/models/analysis_step_model.dart';

class StepIndicator extends StatelessWidget {
  const StepIndicator({super.key, required this.status});

  final AnalysisStepStatus status;

  static const _size = 22.0;

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case AnalysisStepStatus.done:
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: _size,
          height: _size,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color(0xFF10B981),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.check, size: 13, color: AppColors.kWhite),
        );

      case AnalysisStepStatus.active:
        return SizedBox(
          width: _size,
          height: _size,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: _size,
                height: _size,
                child: const CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation(AppColors.purbleColor),
                ),
              ),
              Container(
                width: _size * 0.55,
                height: _size * 0.55,
                decoration: const BoxDecoration(
                  color: AppColors.purbleColor,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        );

      case AnalysisStepStatus.pending:
        return Container(
          width: _size,
          height: _size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFF29292F), width: 1.5),
          ),
        );
    }
  }
}