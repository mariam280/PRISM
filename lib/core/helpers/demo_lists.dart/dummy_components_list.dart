   import 'package:prism/features/components/data/models/component_model.dart';
import 'package:prism/features/components/data/models/component_spec_model.dart';

const dummyComponentsList = [
    ComponentModel(
      name: 'Primary Button',
      subtitleType: 'Interactive · 48 px',
      isAiDetected: true,
      specs: [
        ComponentSpecModel(label: 'Type', value: 'Interactive'),
        ComponentSpecModel(label: 'Height', value: '48 px'),
        ComponentSpecModel(label: 'Radius', value: '12 px'),
      ],
    ),
    ComponentModel(
      name: 'Search Field',
      subtitleType: 'Input · 44 px',
      isAiDetected: true,
      specs: [
        ComponentSpecModel(label: 'Type', value: 'Input'),
        ComponentSpecModel(label: 'Height', value: '44 px'),
        ComponentSpecModel(label: 'Radius', value: '10 px'),
      ],
    ),
    ComponentModel(
      name: 'Product Card',
      subtitleType: 'Container · 160 px',
      isAiDetected: true,
      specs: [
        ComponentSpecModel(label: 'Type', value: 'Container'),
        ComponentSpecModel(label: 'Height', value: '160 px'),
        ComponentSpecModel(label: 'Radius', value: '10 px'),
      ],
    ),
    ComponentModel(
      name: 'Bottom Navigation',
      subtitleType: 'Navigation',
      isAiDetected: true,
      specs: [
        ComponentSpecModel(label: 'Type', value: 'Navigation'),
        ComponentSpecModel(label: 'Height', value: '64 px'),
        ComponentSpecModel(label: 'Items', value: '4'),
      ],
    ),
  ];
