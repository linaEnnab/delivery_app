import 'package:delivery_app/core/responsive/breakpoints.dart';
import 'package:flutter/material.dart';

/// Utility for responsive layout decisions without UI widgets.
class ResponsiveLayout {
  const ResponsiveLayout(this.width);

  final double width;

  ScreenType get screenType {
    if (width >= Breakpoints.desktop) return ScreenType.desktop;
    if (width >= Breakpoints.tablet) return ScreenType.tablet;
    return ScreenType.mobile;
  }

  bool get isMobile => screenType == ScreenType.mobile;
  bool get isTablet => screenType == ScreenType.tablet;
  bool get isDesktop => screenType == ScreenType.desktop;

  /// Max content width for centered layouts on large screens.
  double get contentMaxWidth {
    return switch (screenType) {
      ScreenType.mobile => width,
      ScreenType.tablet => 720,
      ScreenType.desktop => 1200,
    };
  }

  /// Grid column count for restaurant/product listings.
  int get gridColumns {
    return switch (screenType) {
      ScreenType.mobile => 1,
      ScreenType.tablet => 2,
      ScreenType.desktop => 3,
    };
  }

  static ResponsiveLayout of(BuildContext context) {
    return ResponsiveLayout(MediaQuery.sizeOf(context).width);
  }
}
