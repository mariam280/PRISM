import 'package:flutter/material.dart';
import 'package:prism/core/utils/widgets/custom_text_feild.dart';
import 'package:prism/core/utils/widgets/size.dart';
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
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          hint: 'Search projects',
          onChanged: (value) => setState(() => _searchQuery = value),
        ),
        const CustomSize(h: 16),
        FilterChipsRow(
          selected: _selectedFilter,
          onChanged: (filter) => setState(() => _selectedFilter = filter),
        ),
        const CustomSize(h: 20),
        ProjectItemList(filter: _selectedFilter, searchQuery: _searchQuery),
      ],
    );
  }
}