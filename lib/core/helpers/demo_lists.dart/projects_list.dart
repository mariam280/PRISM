
import 'package:prism/core/constants/app_images.dart';
import 'package:prism/features/home/data/models/recent_project_model.dart';

final List<RecentProjectModel> projectsList = [
  RecentProjectModel(
    id: 1,
    name: 'E-Commerce Home',
    type: 'Mobile',
    subType: 'Home Screen',
    image: Assets.imagesMediumCoverProject,
    timeAgo: DateTime.now().subtract(const Duration(days: 1)),
  ),
  RecentProjectModel(
    id: 2,
    name: 'Checkout Flow',
    type: 'Mobile',
    subType: 'Checkout',
    image: Assets.imagesMediumCoverProject,
    timeAgo: DateTime.now().subtract(const Duration(days: 2)),
  ),
  RecentProjectModel(
    id: 3,
    name: 'Fitness Dashboard',
    type: 'Mobile',
    subType: 'Dashboard',
    image: Assets.imagesMediumCoverProject,
    timeAgo: DateTime.now().subtract(const Duration(days: 3)),
  ),
  /////////////
  RecentProjectModel(
    id: 1,
    name: 'E-Commerce Home',
    type: 'Mobile',
    subType: 'Home Screen',
    image: Assets.imagesMediumCoverProject,
    timeAgo: DateTime.now().subtract(const Duration(days: 1)),
  ),
  RecentProjectModel(
    id: 2,
    name: 'Checkout Flow',
    type: 'Mobile',
    subType: 'Checkout',
    image: Assets.imagesMediumCoverProject,
    timeAgo: DateTime.now().subtract(const Duration(days: 2)),
  ),
  RecentProjectModel(
    id: 3,
    name: 'Fitness Dashboard',
    type: 'Mobile',
    subType: 'Dashboard',
    image: Assets.imagesMediumCoverProject,
    timeAgo: DateTime.now().subtract(const Duration(days: 3)),
  ),
  RecentProjectModel(
    id: 1,
    name: 'E-Commerce Home',
    type: 'Mobile',
    subType: 'Home Screen',
    image: Assets.imagesMediumCoverProject,
    timeAgo: DateTime.now().subtract(const Duration(days: 1)),
  ),
  RecentProjectModel(
    id: 2,
    name: 'Checkout Flow',
    type: 'Mobile',
    subType: 'Checkout',
    image: Assets.imagesMediumCoverProject,
    timeAgo: DateTime.now().subtract(const Duration(days: 2)),
  ),
  RecentProjectModel(
    id: 3,
    name: 'Fitness Dashboard',
    type: 'Mobile',
    subType: 'Dashboard',
    image: Assets.imagesMediumCoverProject,
    timeAgo: DateTime.now().subtract(const Duration(days: 3)),
  ),
];