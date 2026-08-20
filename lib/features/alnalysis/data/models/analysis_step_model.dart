/// A single step in the "analyzing your interface" checklist.
class AnalysisStepModel {
  final String title;
  final String activeCaption;
  const AnalysisStepModel({required this.title, required this.activeCaption});
}

enum AnalysisStepStatus { pending, active, done }