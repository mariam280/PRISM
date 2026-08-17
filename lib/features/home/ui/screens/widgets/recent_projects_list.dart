import 'package:flutter/material.dart';
import 'package:prism/core/helpers/demo_lists.dart/recent_project_list.dart';
import 'package:prism/features/home/ui/screens/widgets/recent_project_item.dart';

class RecentProjectsList extends StatelessWidget {
  const RecentProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       itemCount: recentProjectsList.length,
       physics: NeverScrollableScrollPhysics(),
       shrinkWrap: true,
      itemBuilder: (context, index) {
        return RecentProjectItem(
            onTap: () {},
        recentProject: recentProjectsList[index]);
      },
     
    );
  }
}