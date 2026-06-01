import 'package:flutter/material.dart';

import 'package:delivery_app/core/theme/app_colors.dart';

/// Elevation-style shadows for **M3 surfaces** (cards, sheets, modals).
/// Prefer low elevation in dark mode to reduce halos.
abstract final class AppShadows {
  static const List<BoxShadow> none = [];

  static const List<BoxShadow> level0 = [];

  /// Resting card / list tile (light).
  static const List<BoxShadow> level1 = [
    BoxShadow(
      color: Color(0x14000000),
      blurRadius: 8,
      offset: Offset(0, 2),
    ),
  ];

  static const List<BoxShadow> level2 = [
    BoxShadow(
      color: Color(0x1A000000),
      blurRadius: 12,
      offset: Offset(0, 4),
    ),
  ];

  static const List<BoxShadow> level3 = [
    BoxShadow(
      color: Color(0x24000000),
      blurRadius: 16,
      offset: Offset(0, 8),
    ),
  ];

  /// Dark surfaces — deeper, shorter halos.
  static const List<BoxShadow> level1Dark = [
    BoxShadow(
      color: Color(0x4D000000),
      blurRadius: 10,
      offset: Offset(0, 2),
    ),
  ];

  static const List<BoxShadow> level2Dark = [
    BoxShadow(
      color: Color(0x66000000),
      blurRadius: 14,
      offset: Offset(0, 4),
    ),
  ];

  static const List<BoxShadow> level3Dark = [
    BoxShadow(
      color: Color(0x73000000),
      blurRadius: 20,
      offset: Offset(0, 10),
    ),
  ];

  /// Default **card** shadow for brightness.
  static List<BoxShadow> card(Brightness brightness) =>
      brightness == Brightness.dark ? level1Dark : level1;

  /// **Floating card** / featured tile (slightly lifted).
  static List<BoxShadow> cardElevated(Brightness brightness) =>
      brightness == Brightness.dark ? level2Dark : level2;

  /// **Dialogs, bottom sheets, modal panels** — stronger separation from scrim.
  static List<BoxShadow> modal(Brightness brightness) =>
      brightness == Brightness.dark ? level3Dark : level3;

  /// Tinted scrim-adjacent shadow (subtle brand warmth, light mode only).
  static final List<BoxShadow> cardTintedLight = [
    const BoxShadow(
      color: Color(0x12000000),
      blurRadius: 10,
      offset: Offset(0, 3),
    ),
    BoxShadow(
      color: AppColors.primary.withValues(alpha: 0.06),
      blurRadius: 12,
      offset: const Offset(0, 4),
    ),
  ];

  /// Same as [card] — kept for existing call sites.
  static List<BoxShadow> forBrightness(Brightness brightness) =>
      card(brightness);

  /// Same as [cardElevated] — kept for existing call sites.
  static List<BoxShadow> forBrightnessLevel2(Brightness brightness) =>
      cardElevated(brightness);
}
