import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Material 3 type scale (sp). Values follow M3; line heights favor Arabic
/// (Cairo) legibility in RTL.
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

/// Line heights tuned for Arabic script — slightly taller than default Latin.
abstract final class AppLineHeights {
  static const double display = 1.12;
  static const double headline = 1.2;
  static const double title = 1.25;
  static const double body = 1.45;
  static const double label = 1.2;
}

/// Tracking: Arabic display type rarely needs positive tracking.
abstract final class AppLetterSpacing {
  static const double tight = -0.25;
  static const double none = 0;
  static const double loose = 0.15;
}

/// **Arabic primary:** [Cairo] — common in MENA delivery apps.
/// **English secondary:** [Inter] as [TextStyle.fontFamilyFallback] for Latin.
abstract final class AppFontFamilies {
  static String? get cairo => GoogleFonts.cairo().fontFamily;

  /// Latin companion to Cairo; used as fallback, not as primary family.
  static String? get inter => GoogleFonts.inter().fontFamily;

  static List<String> latinFallback() {
    final f = inter;
    return f != null ? <String>[f] : const <String>[];
  }
}

/// Typography tokens: Display, Headline, Title, Body, Label (Material 3 roles).
abstract final class AppTypography {
  /// Material [TextTheme] with Cairo + Inter fallback, bound to [ColorScheme].
  static TextTheme textTheme(
    ColorScheme colors, {
    required Brightness brightness,
  }) {
    final base = ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colors,
    ).textTheme;
    final cairo = GoogleFonts.cairoTextTheme(base);
    final fb = AppFontFamilies.latinFallback();

    TextStyle? t(TextStyle? s) => s?.copyWith(fontFamilyFallback: fb);

    return cairo.copyWith(
      displayLarge: t(
        cairo.displayLarge?.copyWith(
          fontSize: AppFontSizes.displayLarge,
          height: AppLineHeights.display,
          letterSpacing: AppLetterSpacing.tight,
          fontWeight: FontWeight.w400,
          color: colors.onSurface,
        ),
      ),
      displayMedium: t(
        cairo.displayMedium?.copyWith(
          fontSize: AppFontSizes.displayMedium,
          height: AppLineHeights.display,
          letterSpacing: AppLetterSpacing.none,
          fontWeight: FontWeight.w400,
          color: colors.onSurface,
        ),
      ),
      displaySmall: t(
        cairo.displaySmall?.copyWith(
          fontSize: AppFontSizes.displaySmall,
          height: AppLineHeights.display,
          letterSpacing: AppLetterSpacing.none,
          fontWeight: FontWeight.w400,
          color: colors.onSurface,
        ),
      ),
      headlineLarge: t(
        cairo.headlineLarge?.copyWith(
          fontSize: AppFontSizes.headlineLarge,
          height: AppLineHeights.headline,
          letterSpacing: AppLetterSpacing.none,
          fontWeight: FontWeight.w600,
          color: colors.onSurface,
        ),
      ),
      headlineMedium: t(
        cairo.headlineMedium?.copyWith(
          fontSize: AppFontSizes.headlineMedium,
          height: AppLineHeights.headline,
          letterSpacing: AppLetterSpacing.none,
          fontWeight: FontWeight.w600,
          color: colors.onSurface,
        ),
      ),
      headlineSmall: t(
        cairo.headlineSmall?.copyWith(
          fontSize: AppFontSizes.headlineSmall,
          height: AppLineHeights.headline,
          letterSpacing: AppLetterSpacing.none,
          fontWeight: FontWeight.w600,
          color: colors.onSurface,
        ),
      ),
      titleLarge: t(
        cairo.titleLarge?.copyWith(
          fontSize: AppFontSizes.titleLarge,
          height: AppLineHeights.title,
          letterSpacing: AppLetterSpacing.none,
          fontWeight: FontWeight.w600,
          color: colors.onSurface,
        ),
      ),
      titleMedium: t(
        cairo.titleMedium?.copyWith(
          fontSize: AppFontSizes.titleMedium,
          height: AppLineHeights.title,
          letterSpacing: AppLetterSpacing.loose,
          fontWeight: FontWeight.w600,
          color: colors.onSurface,
        ),
      ),
      titleSmall: t(
        cairo.titleSmall?.copyWith(
          fontSize: AppFontSizes.titleSmall,
          height: AppLineHeights.title,
          letterSpacing: AppLetterSpacing.loose,
          fontWeight: FontWeight.w600,
          color: colors.onSurface,
        ),
      ),
      bodyLarge: t(
        cairo.bodyLarge?.copyWith(
          fontSize: AppFontSizes.bodyLarge,
          height: AppLineHeights.body,
          letterSpacing: AppLetterSpacing.none,
          fontWeight: FontWeight.w400,
          color: colors.onSurface,
        ),
      ),
      bodyMedium: t(
        cairo.bodyMedium?.copyWith(
          fontSize: AppFontSizes.bodyMedium,
          height: AppLineHeights.body,
          letterSpacing: AppLetterSpacing.none,
          fontWeight: FontWeight.w400,
          color: colors.onSurfaceVariant,
        ),
      ),
      bodySmall: t(
        cairo.bodySmall?.copyWith(
          fontSize: AppFontSizes.bodySmall,
          height: AppLineHeights.body,
          letterSpacing: AppLetterSpacing.none,
          fontWeight: FontWeight.w400,
          color: colors.onSurfaceVariant,
        ),
      ),
      labelLarge: t(
        cairo.labelLarge?.copyWith(
          fontSize: AppFontSizes.labelLarge,
          height: AppLineHeights.label,
          letterSpacing: AppLetterSpacing.loose,
          fontWeight: FontWeight.w600,
          color: colors.onSurface,
        ),
      ),
      labelMedium: t(
        cairo.labelMedium?.copyWith(
          fontSize: AppFontSizes.labelMedium,
          height: AppLineHeights.label,
          letterSpacing: AppLetterSpacing.loose,
          fontWeight: FontWeight.w600,
          color: colors.onSurfaceVariant,
        ),
      ),
      labelSmall: t(
        cairo.labelSmall?.copyWith(
          fontSize: AppFontSizes.labelSmall,
          height: AppLineHeights.label,
          letterSpacing: AppLetterSpacing.loose,
          fontWeight: FontWeight.w600,
          color: colors.onSurfaceVariant,
        ),
      ),
    );
  }

  /// Primary UI font (Arabic-first). Prefer [textTheme] for full stack.
  static String? get fontFamily => AppFontFamilies.cairo;

  /// Secondary / Latin UI font name for one-off [TextStyle]s.
  static String? get latinFontFamily => AppFontFamilies.inter;
}
