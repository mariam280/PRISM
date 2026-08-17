import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:prism/features/home/ui/screens/home_screen.dart';
import 'package:prism/features/layout/ui/screens/widgets/custom_nav_bar.dart';
import 'package:prism/features/profile/ui/screens/profile_screen.dart';
import 'package:prism/features/projects/ui/screens/projects_screen.dart';

class LayoutScreenBody extends StatefulWidget {
  const LayoutScreenBody({super.key});

  @override
  State<LayoutScreenBody> createState() => _LayoutScreenBodyState();
}

class _LayoutScreenBodyState extends State<LayoutScreenBody> {
  late PageController pageController;
    int currentIndex = 0;
  void onTap(int index) {
    if (currentIndex != index) {
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      currentIndex = index;
      setState(() {});
    }
  }
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
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: CustomNavBar(onTap: onTap, currentIndex: currentIndex),
        ),
      ],
    );
  }
}
