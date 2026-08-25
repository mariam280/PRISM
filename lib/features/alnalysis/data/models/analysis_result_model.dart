import 'package:prism/features/components/data/models/component_model.dart';
import 'package:prism/features/design/data/models/design_model.dart';
import 'package:prism/features/overview/data/models/overview_model.dart';

class AnalysisResultModel {
  const AnalysisResultModel({
    required this.projectMeta,
    required this.overview,
    required this.design,
    required this.components,
  });

  final Map<String, dynamic> projectMeta;
  final OverviewModel overview;
  final DesignModel design;
  final List<ComponentModel> components;

  factory AnalysisResultModel.fromJson(
    Map<String, dynamic> json, {
    required String screenshotPath,
  }) {
    return AnalysisResultModel(
      projectMeta: json['projectMeta'] as Map<String, dynamic>,
      overview: OverviewModel.fromJson(
        json['overview'] as Map<String, dynamic>,
      ),
      design: DesignModel.fromJson(json['design'] as Map<String, dynamic>),
      components: (json['components'] as List)
          .map(
            (e) => ComponentModel.fromJson(
              e as Map<String, dynamic>,
              screenshotPath: screenshotPath,
            ),
          )
          .toList(),
    );
  }
}