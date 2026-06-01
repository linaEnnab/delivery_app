import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_typography.dart'
    show AppFontFamilies, AppTypography;
import 'package:flutter/material.dart';

/// Material 3 outlined secondary action — theme tokens + [AppTypography], RTL-safe.
class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    required this.label,
    super.key,
    this.onPressed,
    this.leading,
    this.isLoading = false,
    this.expand = true,
  });

  final String label;
  final VoidCallback? onPressed;
  final Widget? leading;
  final bool isLoading;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final labelStyle = theme.textTheme.labelLarge;

    final child = isLoading
        ? SizedBox(
            height: AppSpacing.xl,
            width: AppSpacing.xl,
            child: CircularProgressIndicator(
              strokeWidth: AppSpacing.xxs + AppSpacing.xxs,
              color: scheme.primary,
            ),
          )
        : Text(
            label,
            style: labelStyle?.copyWith(
              fontFamily: AppTypography.fontFamily,
              fontFamilyFallback: AppFontFamilies.latinFallback(),
            ),
          );

    final button = OutlinedButton(
      onPressed: isLoading ? null : onPressed,
      child: leading != null && !isLoading
          ? Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: Directionality.of(context),
              children: [
                leading!,
                SizedBox(width: AppSpacing.sm),
                child,
              ],
            )
          : child,
    );

    if (expand) {
      return SizedBox(width: double.infinity, child: button);
    }
    return button;
  }
}
