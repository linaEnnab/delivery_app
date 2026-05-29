import 'package:delivery_app/core/theme/app_colors.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_typography.dart';
import 'package:flutter/material.dart';

/// Material 3 theme configuration: light/dark, RTL-friendly, Arabic-first typography.
abstract final class AppTheme {
  static ThemeData light() => _build(Brightness.light);

  static ThemeData dark() => _build(Brightness.dark);

  static ColorScheme _colorScheme(Brightness brightness) {
    final isLight = brightness == Brightness.light;
    if (isLight) {
      return ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
        primaryContainer: AppColors.primaryContainerLight,
        onPrimaryContainer: AppColors.onPrimaryContainerLight,
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        secondaryContainer: AppColors.secondaryContainerLight,
        onSecondaryContainer: AppColors.onSecondaryContainerLight,
        tertiary: AppColors.tertiary,
        onTertiary: AppColors.onTertiary,
        tertiaryContainer: AppColors.tertiaryContainerLight,
        onTertiaryContainer: AppColors.onTertiaryContainerLight,
        error: AppColors.error,
        onError: AppColors.onError,
        errorContainer: AppColors.errorContainerLight,
        onErrorContainer: AppColors.onErrorContainerLight,
        surface: AppColors.lightSurface,
        onSurface: AppColors.lightOnSurface,
        surfaceDim: AppColors.lightSurfaceDim,
        surfaceBright: AppColors.lightSurfaceBright,
        surfaceContainerLowest: AppColors.lightSurfaceContainerLowest,
        surfaceContainerLow: AppColors.lightSurfaceContainerLow,
        surfaceContainer: AppColors.lightSurfaceContainer,
        surfaceContainerHigh: AppColors.lightSurfaceContainerHigh,
        surfaceContainerHighest: AppColors.lightSurfaceContainerHighest,
        onSurfaceVariant: AppColors.lightOnSurfaceVariant,
        outline: AppColors.lightOutline,
        outlineVariant: AppColors.lightOutlineVariant,
        shadow: AppColors.lightShadow,
        scrim: AppColors.lightScrim,
        inverseSurface: AppColors.lightInverseSurface,
        onInverseSurface: AppColors.lightOnInverseSurface,
        inversePrimary: AppColors.lightInversePrimary,
        surfaceTint: AppColors.lightSurfaceTint,
      );
    }
    return ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      primaryContainer: AppColors.primaryContainerDark,
      onPrimaryContainer: AppColors.onPrimaryContainerDark,
      secondary: AppColors.secondary,
      onSecondary: AppColors.onSecondary,
      secondaryContainer: AppColors.secondaryContainerDark,
      onSecondaryContainer: AppColors.onSecondaryContainerDark,
      tertiary: AppColors.tertiary,
      onTertiary: AppColors.onTertiary,
      tertiaryContainer: AppColors.tertiaryContainerDark,
      onTertiaryContainer: AppColors.onTertiaryContainerDark,
      error: AppColors.error,
      onError: AppColors.onError,
      errorContainer: AppColors.errorContainerDark,
      onErrorContainer: AppColors.onErrorContainerDark,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkOnSurface,
      surfaceDim: AppColors.darkSurfaceDim,
      surfaceBright: AppColors.darkSurfaceBright,
      surfaceContainerLowest: AppColors.darkSurfaceContainerLowest,
      surfaceContainerLow: AppColors.darkSurfaceContainerLow,
      surfaceContainer: AppColors.darkSurfaceContainer,
      surfaceContainerHigh: AppColors.darkSurfaceContainerHigh,
      surfaceContainerHighest: AppColors.darkSurfaceContainerHighest,
      onSurfaceVariant: AppColors.darkOnSurfaceVariant,
      outline: AppColors.darkOutline,
      outlineVariant: AppColors.darkOutlineVariant,
      shadow: AppColors.darkShadow,
      scrim: AppColors.darkScrim,
      inverseSurface: AppColors.darkInverseSurface,
      onInverseSurface: AppColors.darkOnInverseSurface,
      inversePrimary: AppColors.darkInversePrimary,
      surfaceTint: AppColors.darkSurfaceTint,
    );
  }

  static ThemeData _build(Brightness brightness) {
    final isLight = brightness == Brightness.light;
    final colorScheme = _colorScheme(brightness);
    final typography =
        AppTypography.textTheme(colorScheme, brightness: brightness);

    final base = ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor:
          isLight ? AppColors.lightBackground : AppColors.darkBackground,
      visualDensity: VisualDensity.standard,
    );

    return base.copyWith(
      textTheme: typography,
      primaryTextTheme: typography,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: AppSpacing.xxs,
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        titleTextStyle: typography.titleLarge,
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: AppRadius.shapeLg(),
        color: colorScheme.surfaceContainerLow,
        clipBehavior: Clip.antiAlias,
      ),
      dialogTheme: DialogThemeData(
        elevation: 0,
        shape: AppRadius.shapeXl(),
        backgroundColor: colorScheme.surfaceContainerHigh,
        insetPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.xxl,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        elevation: 0,
        backgroundColor: colorScheme.surfaceContainerHigh,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppRadius.xl),
          ),
        ),
        showDragHandle: true,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        shape: AppRadius.shapeMd(),
        backgroundColor: colorScheme.inverseSurface,
        contentTextStyle:
            typography.bodyMedium?.copyWith(color: colorScheme.onInverseSurface),
      ),
      chipTheme: ChipThemeData(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.xs,
        ),
        shape: AppRadius.shapeSm(),
        side: BorderSide(color: colorScheme.outlineVariant),
        backgroundColor: colorScheme.surfaceContainerHigh,
        selectedColor: colorScheme.secondaryContainer,
        disabledColor: colorScheme.surfaceContainerHighest,
        labelStyle: typography.labelLarge!,
        secondaryLabelStyle: typography.labelMedium!,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        ),
        fillColor: colorScheme.surfaceContainerHighest,
        border: OutlineInputBorder(borderRadius: AppRadius.borderMd),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadius.borderMd,
          borderSide: BorderSide(color: colorScheme.outline.withValues(alpha: 0.35)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadius.borderMd,
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: AppRadius.borderMd,
          borderSide: BorderSide(color: colorScheme.error),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xxl,
            vertical: AppSpacing.md,
          ),
          minimumSize: const Size(0, AppSpacing.minTapTarget),
          shape: RoundedRectangleBorder(borderRadius: AppRadius.borderMd),
          elevation: 0,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xxl,
            vertical: AppSpacing.md,
          ),
          minimumSize: const Size(0, AppSpacing.minTapTarget),
          shape: RoundedRectangleBorder(borderRadius: AppRadius.borderMd),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          minimumSize: const Size(AppSpacing.minTapTarget, AppSpacing.minTapTarget),
          shape: RoundedRectangleBorder(borderRadius: AppRadius.borderMd),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: AppSpacing.xs,
        focusElevation: AppSpacing.sm,
        hoverElevation: AppSpacing.sm,
        highlightElevation: AppSpacing.sm,
        shape: RoundedRectangleBorder(borderRadius: AppRadius.borderLg),
      ),
      navigationBarTheme: NavigationBarThemeData(
        elevation: 0,
        height: AppSpacing.minTapTarget + AppSpacing.xxl,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        indicatorColor: colorScheme.primaryContainer,
        backgroundColor: colorScheme.surface,
      ),
      navigationRailTheme: NavigationRailThemeData(
        elevation: 0,
        backgroundColor: colorScheme.surface,
        indicatorColor: colorScheme.primaryContainer,
        minWidth: AppSpacing.massive + AppSpacing.sm,
      ),
      dividerTheme: DividerThemeData(
        color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        space: 1,
        thickness: 1,
      ),
      listTileTheme: ListTileThemeData(
        contentPadding: AppSpacing.listTilePadding,
        minVerticalPadding: AppSpacing.sm,
        shape: AppRadius.shapeMd(),
      ),
      badgeTheme: BadgeThemeData(
        backgroundColor: colorScheme.error,
        textColor: colorScheme.onError,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colorScheme.primary,
        linearTrackColor: colorScheme.surfaceContainerHighest,
        circularTrackColor: colorScheme.surfaceContainerHighest,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.onPrimary;
          }
          return colorScheme.outline;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.surfaceContainerHighest;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: AppRadius.borderXs),
        side: BorderSide(color: colorScheme.outline, width: 2),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.outline;
        }),
      ),
    );
  }
}
