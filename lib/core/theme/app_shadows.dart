import 'package:flutter/material.dart';

/// Elevation-style shadow presets (Material 3 still uses subtle shadows for sheets).
abstract final class AppShadows {
  static const List<BoxShadow> none = [];

  static const List<BoxShadow> level0 = [];

  /// Resting card / list tile lift (light mode).
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

  /// Softer shadows for dark surfaces (less halo).
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

  static List<BoxShadow> forBrightness(Brightness brightness) {
    return brightness == Brightness.dark ? level1Dark : level1;
  }

  static List<BoxShadow> forBrightnessLevel2(Brightness brightness) {
    return brightness == Brightness.dark ? level2Dark : level2;
  }
}
