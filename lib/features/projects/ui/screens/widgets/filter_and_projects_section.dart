import 'package:flutter/material.dart';
import 'package:prism/features/projects/ui/screens/widgets/filter_chip_row.dart';
import 'package:prism/features/projects/ui/screens/widgets/project_item_list.dart';

class FilterAndProjectsSection extends StatefulWidget {
  const FilterAndProjectsSection({super.key});

  @override
  State<FilterAndProjectsSection> createState() =>
      _RecentProjectsSectionState();
}

class _RecentProjectsSectionState extends State<FilterAndProjectsSection> {
  String _selectedFilter = 'All';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FilterChipsRow(
          selected: _selectedFilter,
          onChanged: (filter) => setState(() => _selectedFilter = filter),
        ),
        ProjectItemList(),
      ],
    );
  }
}

//Expanded(child: ProjectItemList(filter: _selectedFilter)),
