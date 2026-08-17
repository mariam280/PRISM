import 'package:flutter/material.dart';
import 'package:prism/features/projects/ui/screens/widgets/projects_screen_body.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ProjectsScreenBody(),
    );
  }
}