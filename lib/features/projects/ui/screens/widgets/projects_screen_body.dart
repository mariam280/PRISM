import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';
import 'package:prism/core/utils/widgets/custom_text_feild.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/projects/ui/screens/widgets/filter_and_projects_section.dart';

class ProjectsScreenBody extends StatelessWidget {
  const ProjectsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 24, bottom: 32),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Projects', style: AppStyles.boldInter22(context)),
            Text(
              'Your analyzed interfaces.',
              style: AppStyles.regularInter14(context),
            ),
            const CustomSize(h: 24),
            CustomTextField(hint: 'Search projects'),
            const CustomSize(h: 16),
            FilterAndProjectsSection(),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.2),
          ],
        ),
      ),
    );
  }
}
