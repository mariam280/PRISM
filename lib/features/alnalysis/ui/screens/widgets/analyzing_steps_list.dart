import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/features/alnalysis/data/models/analysis_step_model.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/step_indicator.dart';
import 'package:prism/features/alnalysis/ui/screens/widgets/typing_dots.dart';

class AnalyzingStepsList extends StatefulWidget {
  const AnalyzingStepsList({
    super.key,
    required this.steps,
    this.stepDuration = const Duration(milliseconds: 1400),
    this.onCompleted,
  });

  final List<AnalysisStepModel> steps;
  final Duration stepDuration;
  final VoidCallback? onCompleted;

  @override
  State<AnalyzingStepsList> createState() => _AnalyzingStepsListState();
}

class _AnalyzingStepsListState extends State<AnalyzingStepsList> {
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _scheduleNextStep();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _scheduleNextStep() {
    _timer = Timer(widget.stepDuration, () {
      if (!mounted) return;
      if (_currentIndex < widget.steps.length - 1) {
        setState(() => _currentIndex++);
        _scheduleNextStep();
      } else {
        Future.delayed(const Duration(milliseconds: 400), () {
          if (mounted) widget.onCompleted?.call();
        });
      }
    });
  }

  AnalysisStepStatus _statusFor(int index) {
    if (index < _currentIndex) return AnalysisStepStatus.done;
    if (index == _currentIndex) return AnalysisStepStatus.active;
    return AnalysisStepStatus.pending;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < widget.steps.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: _StepRow(
              step: widget.steps[i],
              status: _statusFor(i),
            ),
          ),
        const SizedBox(height: 12),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          child: Text(
            '${widget.steps[_currentIndex].activeCaption}...',
            key: ValueKey(_currentIndex),
            style: AppStyles.regularInter13(context).copyWith(
              color: AppColors.purbleColor,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}

class _StepRow extends StatelessWidget {
  const _StepRow({required this.step, required this.status});

  final AnalysisStepModel step;
  final AnalysisStepStatus status;

  @override
  Widget build(BuildContext context) {
    final Color textColor;
    final FontWeight fontWeight;
    switch (status) {
      case AnalysisStepStatus.done:
        textColor = const Color(0xFF10B981);
        fontWeight = FontWeight.w500;
      case AnalysisStepStatus.active:
        textColor = AppColors.kWhite;
        fontWeight = FontWeight.w600;
      case AnalysisStepStatus.pending:
        textColor = AppColors.grey;
        fontWeight = FontWeight.w400;
    }

    return Row(
      children: [
        StepIndicator(status: status),
        const SizedBox(width: 12),
        Expanded(
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 250),
            style: AppStyles.regularInter14(context).copyWith(
              color: textColor,
              fontWeight: fontWeight,
            ),
            child: Text(step.title),
          ),
        ),
        if (status == AnalysisStepStatus.active) const TypingDots(),
      ],
    );
  }
}