import 'package:flutter/material.dart';

/// **4px grid** — mobile-first spacing. Use [EdgeInsetsDirectional] in layouts
/// for RTL correctness; these values are direction-agnostic magnitudes.
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
  static const double colossal = 56;
  static const double giant = 64;

  /// Standard horizontal padding for scrollable page content (RTL-aware).
  static const EdgeInsetsDirectional pagePaddingHorizontal =
      EdgeInsetsDirectional.symmetric(horizontal: lg);

  /// Comfortable page padding (sections on home, lists).
  static const EdgeInsetsDirectional pagePadding = EdgeInsetsDirectional.symmetric(
    horizontal: lg,
    vertical: md,
  );

  /// Dense lists (restaurant rows, order lines).
  static const EdgeInsetsDirectional listTilePadding =
      EdgeInsetsDirectional.symmetric(horizontal: lg, vertical: sm);

  /// Minimum tap target (WCAG / Material touch).
  static const double minTapTarget = 48;

  /// Responsive horizontal gutter: tighter on phones, roomier on tablets.
  static double pageHorizontalGutter(double width) {
    if (width >= AppBreakpoints.expanded) return xxl;
    if (width >= AppBreakpoints.medium) return xl;
    return lg;
  }

  /// Responsive section vertical gap between stacked blocks.
  static double sectionGap(double width) {
    if (width >= AppBreakpoints.expanded) return xxxl;
    if (width >= AppBreakpoints.medium) return xxl;
    return xl;
  }

  /// Max readable content width for large windows (marketplace feeds).
  static double contentMaxWidth(double width) {
    if (width >= AppBreakpoints.large) return 1200;
    if (width >= AppBreakpoints.expanded) return 900;
    return width;
  }
}

/// Width breakpoints — **mobile first** (`compact` is default).
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
