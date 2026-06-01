import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_typography.dart'
    show AppFontFamilies, AppTypography;
import 'package:flutter/material.dart';

/// Loading indicator — [AppSpacing] sizing, theme / [AppColors] for contrast.
class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
    this.message,
    this.linear = false,
    this.minHeight,
  });

  final String? message;
  final bool linear;

  /// Track height for linear mode ([AppSpacing.xs] by default).
  final double? minHeight;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final textStyle = theme.textTheme.bodyMedium?.copyWith(
      color: scheme.onSurfaceVariant,
      fontFamily: AppTypography.fontFamily,
      fontFamilyFallback: AppFontFamilies.latinFallback(),
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final barWidth = constraints.hasBoundedWidth
            ? constraints.maxWidth
            : AppSpacing.huge * 5;

        final indicator = linear
            ? SizedBox(
                width: barWidth,
                child: LinearProgressIndicator(
                  minHeight: minHeight ?? AppSpacing.xs,
                  color: scheme.primary,
                  backgroundColor: scheme.surfaceContainerHighest.withValues(
                    alpha: 0.6,
                  ),
                ),
              )
            : SizedBox(
                width: AppSpacing.massive,
                height: AppSpacing.massive,
                child: CircularProgressIndicator(
                  color: scheme.primary,
                  strokeWidth: AppSpacing.xxs + AppSpacing.xxs,
                ),
              );

        if (message == null || message!.isEmpty) {
          return Center(child: indicator);
        }

        return Center(
          child: Padding(
            padding: const EdgeInsetsDirectional.all(AppSpacing.lg),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                indicator,
                SizedBox(height: AppSpacing.md),
                Text(message!, textAlign: TextAlign.center, style: textStyle),
              ],
            ),
          ),
        );
      },
    );
  }
}
