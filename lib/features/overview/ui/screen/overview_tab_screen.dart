import 'package:flutter/material.dart';
import 'package:prism/features/overview/data/models/overview_model.dart';
import 'package:prism/features/overview/ui/screen/widgets/overview_tab_body.dart';

class OverviewTabScreen extends StatelessWidget {
  const OverviewTabScreen({super.key, required this.overview});

  final OverviewModel overview;

  @override
  Widget build(BuildContext context) {
    return OverviewTabBody(overview: overview);
  }
}