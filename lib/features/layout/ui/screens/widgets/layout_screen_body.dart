import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:prism/features/home/ui/screens/home_screen.dart';
import 'package:prism/features/profile/ui/screens/profile_screen.dart';
import 'package:prism/features/projects/ui/screens/projects_screen.dart';

class LayoutScreenBody extends StatefulWidget {
  const LayoutScreenBody({super.key});

  @override
  State<LayoutScreenBody> createState() => _LayoutScreenBodyState();
}

class _LayoutScreenBodyState extends State<LayoutScreenBody> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ExpandablePageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomeScreen(),
            ProjectsScreen(),
            ProfileScreen(),
          ],
        ),
        
      ],
    );
  }
}
