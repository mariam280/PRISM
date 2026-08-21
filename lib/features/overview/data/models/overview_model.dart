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
}