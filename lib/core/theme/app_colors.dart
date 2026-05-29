import 'package:flutter/material.dart';

/// Semantic and brand color tokens for light/dark Material 3 themes.
/// Primary red aligns with modern MENA food-delivery apps (Talabat, Jahez, etc.).
abstract final class AppColors {
  // ——— Brand ———
  /// Primary brand: modern food-delivery red.
  static const Color primary = Color(0xFFE4002B);
  static const Color onPrimary = Color(0xFFFFFFFF);

  /// Light: soft red wash. Dark: translucent primary overlay.
  static const Color primaryContainerLight = Color(0xFFFFDAD6);
  static const Color onPrimaryContainerLight = Color(0xFF410002);
  static const Color primaryContainerDark = Color(0xFF930017);
  static const Color onPrimaryContainerDark = Color(0xFFFFDAD6);

  /// Secondary: deep teal for success states & positive CTAs (fresh / halal-adjacent cues).
  static const Color secondary = Color(0xFF006B5C);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color secondaryContainerLight = Color(0xFF75F8E3);
  static const Color onSecondaryContainerLight = Color(0xFF00201B);
  static const Color secondaryContainerDark = Color(0xFF005045);
  static const Color onSecondaryContainerDark = Color(0xFF75F8E3);

  /// Tertiary: warm amber for highlights & loyalty accents.
  static const Color tertiary = Color(0xFF7C5800);
  static const Color onTertiary = Color(0xFFFFFFFF);
  static const Color tertiaryContainerLight = Color(0xFFFFDE9E);
  static const Color onTertiaryContainerLight = Color(0xFF271900);
  static const Color tertiaryContainerDark = Color(0xFF5C4300);
  static const Color onTertiaryContainerDark = Color(0xFFFFDE9E);

  // ——— Semantic (same in both modes; pair with surfaces for contrast) ———
  static const Color success = Color(0xFF1B7A6E);
  static const Color onSuccess = Color(0xFFFFFFFF);
  static const Color successContainer = Color(0xFFB8F5E8);
  static const Color onSuccessContainer = Color(0xFF002019);

  static const Color warning = Color(0xFFB8860B);
  static const Color onWarning = Color(0xFF1A1200);
  static const Color warningContainer = Color(0xFFFFE08A);
  static const Color onWarningContainer = Color(0xFF261A00);

  static const Color error = Color(0xFFBA1A1A);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color errorContainerLight = Color(0xFFFFDAD6);
  static const Color onErrorContainerLight = Color(0xFF410002);
  static const Color errorContainerDark = Color(0xFF93000A);
  static const Color onErrorContainerDark = Color(0xFFFFDAD6);

  static const Color info = Color(0xFF00639C);
  static const Color onInfo = Color(0xFFFFFFFF);
  static const Color infoContainerLight = Color(0xFFD0E4FF);
  static const Color onInfoContainerLight = Color(0xFF001D36);
  static const Color infoContainerDark = Color(0xFF004A77);
  static const Color onInfoContainerDark = Color(0xFFD0E4FF);

  // ——— Neutrals — light ———
  static const Color lightBackground = Color(0xFFF8F8F8);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceDim = Color(0xFFF0F0F0);
  static const Color lightSurfaceBright = Color(0xFFFFFFFF);
  static const Color lightOnSurface = Color(0xFF1C1B1B);
  static const Color lightOnSurfaceVariant = Color(0xFF49454F);
  static const Color lightOutline = Color(0xFF79747E);
  static const Color lightOutlineVariant = Color(0xFFCAC4D0);
  static const Color lightInverseSurface = Color(0xFF313033);
  static const Color lightOnInverseSurface = Color(0xFFF4EFF4);
  static const Color lightInversePrimary = Color(0xFFFFB3AD);
  static const Color lightShadow = Color(0xFF000000);
  static const Color lightScrim = Color(0xFF000000);
  static const Color lightSurfaceTint = primary;

  // ——— Neutrals — dark ———
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1C1B1B);
  static const Color darkSurfaceDim = Color(0xFF141313);
  static const Color darkSurfaceBright = Color(0xFF3B3838);
  static const Color darkOnSurface = Color(0xFFE6E1E5);
  static const Color darkOnSurfaceVariant = Color(0xFFCAC4D0);
  static const Color darkOutline = Color(0xFF938F99);
  static const Color darkOutlineVariant = Color(0xFF49454F);
  static const Color darkInverseSurface = Color(0xFFE6E1E5);
  static const Color darkOnInverseSurface = Color(0xFF313033);
  static const Color darkInversePrimary = Color(0xFFFF5449);
  static const Color darkShadow = Color(0xFF000000);
  static const Color darkScrim = Color(0xFF000000);
  static const Color darkSurfaceTint = primary;

  // ——— Surface containers (Material 3 elevation tonal steps) ———
  static const Color lightSurfaceContainerLowest = Color(0xFFFFFFFF);
  static const Color lightSurfaceContainerLow = Color(0xFFF7F2F7);
  static const Color lightSurfaceContainer = Color(0xFFF1ECF1);
  static const Color lightSurfaceContainerHigh = Color(0xFFEBE6EB);
  static const Color lightSurfaceContainerHighest = Color(0xFFE6E1E6);

  static const Color darkSurfaceContainerLowest = Color(0xFF0F0E0E);
  static const Color darkSurfaceContainerLow = Color(0xFF1C1B1B);
  static const Color darkSurfaceContainer = Color(0xFF201F1F);
  static const Color darkSurfaceContainerHigh = Color(0xFF2B2929);
  static const Color darkSurfaceContainerHighest = Color(0xFF363434);

  // ——— Marketplace-specific accents (not part of ColorScheme) ———
  static const Color ratingStar = Color(0xFFFFB703);
  static const Color loyaltyAccent = Color(0xFF7C4DFF);
  static const Color discountBadge = Color(0xFFE4002B);
  static const Color freeDeliveryBadge = Color(0xFF006B5C);
  static const Color promoBanner = Color(0xFFFF6B35);
}
