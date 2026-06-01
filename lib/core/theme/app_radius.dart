import 'package:flutter/material.dart';

/// Corner radii (logical px). MENA apps often use **rounded cards** and
/// **pill CTAs**. Use [cardRadius] / [buttonRadius] / [inputRadius] for parity
/// with [AppTheme] component themes.
abstract final class AppRadius {
  static const double none = 0;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double full = 9999;

  /// Cards, restaurant tiles, large media shells (matches [CardTheme] in [AppTheme]).
  static const double cardRadius = lg;

  /// Filled / outlined buttons, chips (matches button themes in [AppTheme]).
  static const double buttonRadius = md;

  /// Text fields, search bars (matches [InputDecorationTheme] in [AppTheme]).
  static const double inputRadius = md;

  static const BorderRadius borderXs = BorderRadius.all(Radius.circular(xs));
  static const BorderRadius borderSm = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius borderMd = BorderRadius.all(Radius.circular(md));
  static const BorderRadius borderLg = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius borderXl = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius borderXxl = BorderRadius.all(Radius.circular(xxl));
  static const BorderRadius borderFull =
      BorderRadius.all(Radius.circular(full));

  /// Semantic aliases aligned with [cardRadius] / [buttonRadius] / [inputRadius].
  static const BorderRadius borderCard =
      BorderRadius.all(Radius.circular(cardRadius));
  static const BorderRadius borderButton =
      BorderRadius.all(Radius.circular(buttonRadius));
  static const BorderRadius borderInput =
      BorderRadius.all(Radius.circular(inputRadius));

  static RoundedRectangleBorder shapeXs({BorderSide side = BorderSide.none}) {
    return RoundedRectangleBorder(borderRadius: borderXs, side: side);
  }

  static RoundedRectangleBorder shapeSm({BorderSide side = BorderSide.none}) {
    return RoundedRectangleBorder(borderRadius: borderSm, side: side);
  }

  static RoundedRectangleBorder shapeMd({BorderSide side = BorderSide.none}) {
    return RoundedRectangleBorder(borderRadius: borderMd, side: side);
  }

  static RoundedRectangleBorder shapeLg({BorderSide side = BorderSide.none}) {
    return RoundedRectangleBorder(borderRadius: borderLg, side: side);
  }

  static RoundedRectangleBorder shapeXl({BorderSide side = BorderSide.none}) {
    return RoundedRectangleBorder(borderRadius: borderXl, side: side);
  }

  static RoundedRectangleBorder shapeCard({BorderSide side = BorderSide.none}) {
    return RoundedRectangleBorder(borderRadius: borderCard, side: side);
  }

  static RoundedRectangleBorder shapeButton({BorderSide side = BorderSide.none}) {
    return RoundedRectangleBorder(borderRadius: borderButton, side: side);
  }

  static RoundedRectangleBorder shapeInput({BorderSide side = BorderSide.none}) {
    return RoundedRectangleBorder(borderRadius: borderInput, side: side);
  }
}
