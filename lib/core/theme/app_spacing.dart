import 'package:flutter/material.dart';

/// 4px grid spacing tokens. Use for padding, gaps, and insets.
abstract final class AppSpacing {
  static const double xxs = 2;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double xxxl = 32;
  static const double huge = 40;
  static const double massive = 48;

  /// Standard horizontal padding for scrollable page content.
  static const EdgeInsets pagePaddingHorizontal = EdgeInsets.symmetric(
    horizontal: lg,
  );

  /// Comfortable page padding (e.g. home sections).
  static const EdgeInsets pagePadding = EdgeInsets.symmetric(
    horizontal: lg,
    vertical: md,
  );

  /// Dense lists (restaurant rows, order lines).
  static const EdgeInsets listTilePadding = EdgeInsets.symmetric(
    horizontal: lg,
    vertical: sm,
  );

  /// Minimum tap target (accessibility) — use when wrapping compact controls.
  static const double minTapTarget = 48;
}

/// Width breakpoints for responsive layout (token-only; no layout widgets).
abstract final class AppBreakpoints {
  /// Handset portrait.
  static const double compact = 0;

  /// Large phone / small tablet.
  static const double medium = 600;

  /// Tablet / foldable inner display.
  static const double expanded = 840;

  /// Large tablet / desktop window.
  static const double large = 1200;

  static bool isCompactWidth(double width) => width < medium;

  static bool isMediumWidth(double width) =>
      width >= medium && width < expanded;

  static bool isExpandedWidth(double width) =>
      width >= expanded && width < large;

  static bool isLargeWidth(double width) => width >= large;
}
