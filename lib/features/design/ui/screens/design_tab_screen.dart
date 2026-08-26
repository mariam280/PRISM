import 'package:flutter/material.dart';
import 'package:prism/features/design/data/models/design_model.dart';
import 'package:prism/features/design/ui/screens/widgets/design_tab_body.dart';

class DesignTabScreen extends StatelessWidget {
  const DesignTabScreen({super.key, required this.design});

  final DesignModel design;

  @override
  Widget build(BuildContext context) {
    return DesignTabBody(design: design);
  }
}