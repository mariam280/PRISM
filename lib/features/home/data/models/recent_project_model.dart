class RecentProjectModel {
  const RecentProjectModel({
    required this.id,
    required this.name,
    required this.type,
    required this.timeAgo,
    required this.image,
    required this.subType,
    this.isFavorite = false,
    this.analysisResultJson,
  });

  final String? id;
  final String name;
  final String type;
  final String image;
  final String subType;
  final DateTime timeAgo;
  final bool isFavorite;
  final Map<String, dynamic>? analysisResultJson;

  factory RecentProjectModel.fromAnalysis(
    Map<String, dynamic> projectMetaJson, {
    required String image,
    required DateTime timeAgo,
  }) {
    return RecentProjectModel(
      id: null,
      name: projectMetaJson['projectName'] as String,
      type: projectMetaJson['platformType'] as String,
      subType: projectMetaJson['screenCategory'] as String,
      image: image,
      timeAgo: timeAgo,
    );
  }

  factory RecentProjectModel.fromSupabaseRow(Map<String, dynamic> row) {
    return RecentProjectModel(
      id: row['id'] as String,
      name: row['name'] as String,
      type: row['platform_type'] as String,
      subType: row['screen_category'] as String,
      image: row['image_url'] as String,
      timeAgo: DateTime.parse(row['created_at'] as String),
      isFavorite: row['is_favorite'] as bool? ?? false,
      analysisResultJson: row['analysis_result'] as Map<String, dynamic>?,
    );
  }

  Map<String, dynamic> toInsertJson({
    required String userId,
    required String imageUrl,
    required Map<String, dynamic> analysisResultJson,
  }) {
    return {
      'user_id': userId,
      'name': name,
      'platform_type': type,
      'screen_category': subType,
      'image_url': imageUrl,
      'analysis_result': analysisResultJson,
      'is_favorite': isFavorite,
    };
  }
}