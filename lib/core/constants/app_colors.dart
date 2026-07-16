// lib/core/constants/app_colors.dart

import 'package:flutter/material.dart';

/// Centralized color definitions for Password Fortress.
///
/// Keeping colors in one place ensures the app has a consistent
/// appearance and makes future design changes simple.
abstract final class AppColors {
  AppColors._();

  // Brand
  static const Color primary = Color(0xFF2563EB);
  static const Color primaryContainer = Color(0xFFDCEBFF);

  // Secondary
  static const Color secondary = Color(0xFF14B8A6);
  static const Color secondaryContainer = Color(0xFFD7F7F3);

  // Accent
  static const Color accent = Color(0xFFFFB300);

  // Status
  static const Color success = Color(0xFF2E7D32);
  static const Color warning = Color(0xFFF9A825);
  static const Color error = Color(0xFFC62828);

  // Light Theme
  static const Color lightBackground = Color(0xFFF7F9FC);
  static const Color lightSurface = Colors.white;

  // Dark Theme
  static const Color darkBackground = Color(0xFF111827);
  static const Color darkSurface = Color(0xFF1F2937);

  // Text
  static const Color lightText = Color(0xFF111827);
  static const Color darkText = Color(0xFFF9FAFB);

  // Misc
  static const Color divider = Color(0xFFE5E7EB);

  /// Password strength colors
  static const Color strengthWeak = Color(0xFFD32F2F);
  static const Color strengthFair = Color(0xFFF9A825);
  static const Color strengthGood = Color(0xFF1976D2);
  static const Color strengthStrong = Color(0xFF2E7D32);
}