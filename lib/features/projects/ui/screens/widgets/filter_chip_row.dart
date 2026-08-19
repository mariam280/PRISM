import 'package:flutter/material.dart';
import 'package:prism/features/projects/ui/screens/widgets/filter_chip_itme.dart';

class FilterChipsRow extends StatelessWidget {
  const FilterChipsRow({
    super.key,
    required this.selected,
    required this.onChanged,
    this.filters = const ['All', 'Recent', 'Favorites'],
  });

  final String selected;
  final ValueChanged<String> onChanged;
  final List<String> filters;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final filter in filters) ...[
            FilterChipItem(
              label: filter,
              isSelected: filter == selected,
              onTap: () => onChanged(filter),
            ),
            if (filter != filters.last) const SizedBox(width: 8),
          ],
        ],
      ),
    );
  }
}