class RecentProjectModel {
  final int id;
  final String name;
  final String type;
  final String image;
  final String subType;
  final DateTime timeAgo;

  const RecentProjectModel({
    required this.id,
    required this.name,
    required this.type,
    required this.timeAgo,
    required this.image,
    required this.subType,
  });

  /// Builds a [RecentProjectModel] from Gemini's `projectMeta` JSON
  /// (name/type/subType) combined with values only the app itself knows:
  /// [id] (generated locally), [image] (the picked screenshot's path),
  /// and [timeAgo] (the moment this project was created).
  factory RecentProjectModel.fromAnalysis(
    Map<String, dynamic> projectMetaJson, {
    required int id,
    required String image,
    required DateTime timeAgo,
  }) {
    return RecentProjectModel(
      id: id,
      name: projectMetaJson['projectName'] as String,
      type: projectMetaJson['platformType'] as String,
      subType: projectMetaJson['screenCategory'] as String,
      image: image,
      timeAgo: timeAgo,
    );
  }
}