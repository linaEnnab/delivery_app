import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Raw type scale (sp) — RTL-first apps often use slightly taller line heights.
abstract final class AppFontSizes {
  static const double displayLarge = 57;
  static const double displayMedium = 45;
  static const double displaySmall = 36;
  static const double headlineLarge = 32;
  static const double headlineMedium = 28;
  static const double headlineSmall = 24;
  static const double titleLarge = 22;
  static const double titleMedium = 16;
  static const double titleSmall = 14;
  static const double bodyLarge = 16;
  static const double bodyMedium = 14;
  static const double bodySmall = 12;
  static const double labelLarge = 14;
  static const double labelMedium = 12;
  static const double labelSmall = 11;
}

/// Line heights tuned for Arabic script (Cairo) — improves legibility in RTL.
abstract final class AppLineHeights {
  static const double display = 1.12;
  static const double headline = 1.2;
  static const double title = 1.25;
  static const double body = 1.45;
  static const double label = 1.2;
}

/// Letter spacing tokens (Arabic rarely needs positive tracking on large display type).
abstract final class AppLetterSpacing {
  static const double tight = -0.25;
  static const double none = 0;
  static const double loose = 0.15;
}

/// Cairo: widely used in MENA delivery apps; supports Arabic + Latin.
abstract final class AppTypography {
  /// Material [TextTheme] for [ThemeData], Arabic-first (Cairo), Material 3 roles.
  static TextTheme textTheme(ColorScheme colors, {required Brightness brightness}) {
    final base = ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colors,
    ).textTheme;
    final cairo = GoogleFonts.cairoTextTheme(base);

    return cairo.copyWith(
      displayLarge: cairo.displayLarge?.copyWith(
        fontSize: AppFontSizes.displayLarge,
        height: AppLineHeights.display,
        letterSpacing: AppLetterSpacing.tight,
        fontWeight: FontWeight.w400,
        color: colors.onSurface,
      ),
      displayMedium: cairo.displayMedium?.copyWith(
        fontSize: AppFontSizes.displayMedium,
        height: AppLineHeights.display,
        letterSpacing: AppLetterSpacing.none,
        fontWeight: FontWeight.w400,
        color: colors.onSurface,
      ),
      displaySmall: cairo.displaySmall?.copyWith(
        fontSize: AppFontSizes.displaySmall,
        height: AppLineHeights.display,
        letterSpacing: AppLetterSpacing.none,
        fontWeight: FontWeight.w400,
        color: colors.onSurface,
      ),
      headlineLarge: cairo.headlineLarge?.copyWith(
        fontSize: AppFontSizes.headlineLarge,
        height: AppLineHeights.headline,
        letterSpacing: AppLetterSpacing.none,
        fontWeight: FontWeight.w600,
        color: colors.onSurface,
      ),
      headlineMedium: cairo.headlineMedium?.copyWith(
        fontSize: AppFontSizes.headlineMedium,
        height: AppLineHeights.headline,
        letterSpacing: AppLetterSpacing.none,
        fontWeight: FontWeight.w600,
        color: colors.onSurface,
      ),
      headlineSmall: cairo.headlineSmall?.copyWith(
        fontSize: AppFontSizes.headlineSmall,
        height: AppLineHeights.headline,
        letterSpacing: AppLetterSpacing.none,
        fontWeight: FontWeight.w600,
        color: colors.onSurface,
      ),
      titleLarge: cairo.titleLarge?.copyWith(
        fontSize: AppFontSizes.titleLarge,
        height: AppLineHeights.title,
        letterSpacing: AppLetterSpacing.none,
        fontWeight: FontWeight.w600,
        color: colors.onSurface,
      ),
      titleMedium: cairo.titleMedium?.copyWith(
        fontSize: AppFontSizes.titleMedium,
        height: AppLineHeights.title,
        letterSpacing: AppLetterSpacing.loose,
        fontWeight: FontWeight.w600,
        color: colors.onSurface,
      ),
      titleSmall: cairo.titleSmall?.copyWith(
        fontSize: AppFontSizes.titleSmall,
        height: AppLineHeights.title,
        letterSpacing: AppLetterSpacing.loose,
        fontWeight: FontWeight.w600,
        color: colors.onSurface,
      ),
      bodyLarge: cairo.bodyLarge?.copyWith(
        fontSize: AppFontSizes.bodyLarge,
        height: AppLineHeights.body,
        letterSpacing: AppLetterSpacing.none,
        fontWeight: FontWeight.w400,
        color: colors.onSurface,
      ),
      bodyMedium: cairo.bodyMedium?.copyWith(
        fontSize: AppFontSizes.bodyMedium,
        height: AppLineHeights.body,
        letterSpacing: AppLetterSpacing.none,
        fontWeight: FontWeight.w400,
        color: colors.onSurfaceVariant,
      ),
      bodySmall: cairo.bodySmall?.copyWith(
        fontSize: AppFontSizes.bodySmall,
        height: AppLineHeights.body,
        letterSpacing: AppLetterSpacing.none,
        fontWeight: FontWeight.w400,
        color: colors.onSurfaceVariant,
      ),
      labelLarge: cairo.labelLarge?.copyWith(
        fontSize: AppFontSizes.labelLarge,
        height: AppLineHeights.label,
        letterSpacing: AppLetterSpacing.loose,
        fontWeight: FontWeight.w600,
        color: colors.onSurface,
      ),
      labelMedium: cairo.labelMedium?.copyWith(
        fontSize: AppFontSizes.labelMedium,
        height: AppLineHeights.label,
        letterSpacing: AppLetterSpacing.loose,
        fontWeight: FontWeight.w600,
        color: colors.onSurfaceVariant,
      ),
      labelSmall: cairo.labelSmall?.copyWith(
        fontSize: AppFontSizes.labelSmall,
        height: AppLineHeights.label,
        letterSpacing: AppLetterSpacing.loose,
        fontWeight: FontWeight.w600,
        color: colors.onSurfaceVariant,
      ),
    );
  }

  /// Primary UI font family name (for [TextStyle.fontFamily] outside [TextTheme]).
  static String? get fontFamily => GoogleFonts.cairo().fontFamily;
}
