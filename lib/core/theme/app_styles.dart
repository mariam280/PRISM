import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_colors.dart';

abstract class AppStyles {
  // ─────────────────────────────────────────
  // Inter Font · Regular (w400)
  // ─────────────────────────────────────────

  /// Inter · Regular · 13
  static TextStyle regularInter13(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontFamily: 'Inter',
      color: AppColors.grey,
      fontWeight: FontWeight.w400,
    );
  }

  /// Inter · Regular · 11
  static TextStyle regularInter11(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 11),
      fontFamily: 'Inter',
      color: AppColors.grey,
      fontWeight: FontWeight.w400,
    );
  }

  /// Inter · Regular · 14
  static TextStyle regularInter14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Inter',
      color: AppColors.grey,
      fontWeight: FontWeight.w400,
    );
  }

  /// Inter · Regular · 16
  static TextStyle regularInter16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Inter',
      color: AppColors.grey,
      fontWeight: FontWeight.w400,
    );
  }

  /// Inter · Regular · 24
  static TextStyle regularInter24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Inter',
      color: AppColors.grey,
      fontWeight: FontWeight.w400,
    );
  }
  
  /// Inter · Regular · 18
  static TextStyle regularInter18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Inter',
      color: AppColors.grey,
      fontWeight: FontWeight.w400,
    );
  }

  /// Inter · Regular · 30
  static TextStyle regularInter30(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Inter',
      color: AppColors.grey,
      fontWeight: FontWeight.w400,
    );
  }

  /// Inter · Regular · 72
  static TextStyle regularInter72(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 72),
      fontFamily: 'Inter',
      color: AppColors.grey,
      fontWeight: FontWeight.w400,
    );
  }

  // ─────────────────────────────────────────
  // Inter Font · Medium (w500)
  // ─────────────────────────────────────────

  /// Inter · Medium · 13
  static TextStyle mediumInter13(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontFamily: 'Inter',
      color: AppColors.kWhite2,
      fontWeight: FontWeight.w500,
    );
  }

  /// Inter · Medium · 14
  static TextStyle mediumInter14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Inter',
      color: AppColors.kWhite2,
      fontWeight: FontWeight.w500,
    );
  }

  // ─────────────────────────────────────────
  // Inter Font · SemiBold (w600)
  // ─────────────────────────────────────────

  /// Inter · SemiBold · 9
  static TextStyle semiBoldInter91 (BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 9),
      fontFamily: 'Inter',
      color: AppColors.grey,
      fontWeight: FontWeight.w600,
    );
  }

   /// Inter · SemiBold · 9
  static TextStyle semiBoldInter92 (BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 9),
      fontFamily: 'Inter',
      color: AppColors.purbleColor,
      fontWeight: FontWeight.w600,
    );
  }


   /// Inter · SemiBold · 10
  static TextStyle semiBoldInter10(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontFamily: 'Inter',
      color: AppColors.grey,
      fontWeight: FontWeight.w600,
    );
  }

  
   /// Inter · SemiBold · 13
  static TextStyle semiBoldInter13(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontFamily: 'Inter',
      color: AppColors.purbleColor,
      fontWeight: FontWeight.w600,
    );
  }

  /// Inter · SemiBold · 14
  static TextStyle semiBoldInter141(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Inter',
      color: AppColors.grey,
      fontWeight: FontWeight.w600,
    );
  }

  
  /// Inter · SemiBold · 14
  static TextStyle semiBoldInter142(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Inter',
      color: AppColors.kWhite2,
      fontWeight: FontWeight.w600,
    );
  }

  /// Inter · SemiBold · 24
  static TextStyle semiBoldInter241(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Inter',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w600,
    );
  }


   // ─────────────────────────────────────────
  // Inter Font · Bold (w700)
  // ─────────────────────────────────────────

   /// Inter · Bold · 24
  static TextStyle boldInter24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Inter',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w700,
    );
  }

   /// Inter · Bold · 28
  static TextStyle boldInter28(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      fontFamily: 'Inter',
      color: AppColors.kWhite2,
      fontWeight: FontWeight.w800,
    );
  }

   /// Inter · Bold · 26
  static TextStyle boldInter26(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Inter',
      color: AppColors.kWhite2,
      fontWeight: FontWeight.w700,
    );
  }

  /// Inter · Bold · 22
  static TextStyle boldInter22(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontFamily: 'Inter',
      color: AppColors.kWhite2,
      fontWeight: FontWeight.w700,
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Responsive Font Helpers
// ─────────────────────────────────────────────────────────────────────────────

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .9;
  double upperLimit = fontSize * 1.1;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 1024) {
    return width / 800;
  } else {
    return width / 1000;
  }
}
