import 'package:flutter/material.dart';
import 'package:prism/features/blueprint/ui/screens/widgets/tab_button.dart';

class BlueprintTabBar extends StatelessWidget {
  const BlueprintTabBar({
    super.key,
    required this.selected,
    required this.onChanged,
    this.tabs = const ['Overview', 'Design', 'Components'],
  });

  final String selected;
  final ValueChanged<String> onChanged;
  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xFF29292F), width: 1.115),
        ),
      ),
      child: Row(
        children: [
          for (final tab in tabs) ...[
            Expanded(
              child: TabButton(
                label: tab,
                isSelected: tab == selected,
                onTap: () => onChanged(tab),
              ),
            ),
            if (tab != tabs.last) const SizedBox(width: 4),
          ],
        ],
      ),
    );
  }
}
