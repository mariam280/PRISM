import 'package:flutter/material.dart';
import 'package:prism/core/helpers/demo_lists.dart/projects_list.dart';
import 'package:prism/features/projects/ui/screens/widgets/project_item.dart';

class ProjectItemList extends StatelessWidget {
  const ProjectItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: projectsList.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.72,
      ),
      itemBuilder: (context, index) {
        return ProjectItem(projectModel: projectsList[index], onTap: () {});
      },
    );
  }
}
