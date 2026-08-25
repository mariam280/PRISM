import 'package:prism/features/overview/data/models/stat_item_model.dart';

class OverviewModel {
  const OverviewModel({
    required this.description,
    required this.stats,
    required this.structureItems,
  });

  final String description;
  final List<StatItemModel> stats;
  final List<String> structureItems;

  factory OverviewModel.fromJson(Map<String, dynamic> json) {
    return OverviewModel(
      description: json['description'] as String,
      stats: (json['stats'] as List)
          .map((e) => StatItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      structureItems: List<String>.from(json['structureItems'] as List),
    );
  }
}