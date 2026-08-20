import 'package:flutter/material.dart';
import 'package:prism/core/utils/widgets/appbar_header.dart';
import 'package:prism/features/profile/ui/screens/widgets/appearance_buttons_chip_row.dart';

class AppearanceScreenHeader extends StatefulWidget {
  const AppearanceScreenHeader({super.key});

  @override
  State<AppearanceScreenHeader> createState() => _RecentProjectsSectionState();
}

class _RecentProjectsSectionState extends State<AppearanceScreenHeader> {
  String _selectedFilter = 'Dark';

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppbarHeader(title: 'Setting'),
        AppearanceButtonsChipRow(
          selected: _selectedFilter,
          onChanged: (filter) => setState(() => _selectedFilter = filter),
        ),
      ],
    );
  }
}

//Expanded(child: ProjectItemList(filter: _selectedFilter)),
