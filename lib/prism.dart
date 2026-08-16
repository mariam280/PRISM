import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:prism/core/routing/app_router.dart';
import 'package:prism/core/theme/app_colors.dart';

class PrismApp extends StatelessWidget {
  const PrismApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backGroundColor),
      routerConfig: AppRouter.goRouter,
    );
  }
}
