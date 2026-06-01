import 'package:delivery_app/core/theme/app_spacing.dart';

/// Horizontal inset that scales slightly on wider layouts (design tokens only).
double responsivePageInsetX(double width) {
  if (AppBreakpoints.isLargeWidth(width)) {
    return AppSpacing.xxxl;
  }
  if (AppBreakpoints.isExpandedWidth(width) ||
      AppBreakpoints.isMediumWidth(width)) {
    return AppSpacing.xxl;
  }
  return AppSpacing.lg;
}
