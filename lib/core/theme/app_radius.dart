import 'package:flutter/material.dart';

/// Corner radius tokens (dp). Arabic/MENA apps often use generous radii.
abstract final class AppRadius {
  static const double none = 0;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double full = 9999;

  static const BorderRadius borderXs = BorderRadius.all(Radius.circular(xs));
  static const BorderRadius borderSm = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius borderMd = BorderRadius.all(Radius.circular(md));
  static const BorderRadius borderLg = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius borderXl = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius borderXxl = BorderRadius.all(Radius.circular(xxl));
  static const BorderRadius borderFull =
      BorderRadius.all(Radius.circular(full));

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
}
