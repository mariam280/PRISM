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
}
