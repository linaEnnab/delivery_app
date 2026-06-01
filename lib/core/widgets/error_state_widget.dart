import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

/// Full-screen friendly error panel — **not** Flutter’s framework [ErrorWidget].
///
/// Arabic-first default retry label; RTL-safe padding and alignment.
class ErrorStateWidget extends StatelessWidget {
  const ErrorStateWidget({
    required this.message,
    super.key,
    this.title,
    this.onRetry,
    this.retryLabel,
  });

  final String message;
  final String? title;
  final VoidCallback? onRetry;

  /// Defaults to Arabic «إعادة المحاولة» when null and [onRetry] is set.
  final String? retryLabel;

  static const String defaultRetryAr = 'إعادة المحاولة';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return LayoutBuilder(
      builder: (context, constraints) {
        final maxContent = constraints.hasBoundedWidth
            ? (constraints.maxWidth * 0.92).clamp(0.0, 440.0)
            : 440.0;

        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxContent),
            child: Padding(
              padding: const EdgeInsetsDirectional.all(AppSpacing.xxl),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.error_outline_rounded,
                    size: AppSpacing.massive + AppSpacing.sm,
                    color: scheme.error,
                  ),
                  SizedBox(height: AppSpacing.md),
                  if (title != null && title!.isNotEmpty) ...[
                    Text(
                      title!,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: AppSpacing.sm),
                  ],
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                  if (onRetry != null) ...[
                    SizedBox(height: AppSpacing.xl),
                    PrimaryButton(
                      label: retryLabel ?? defaultRetryAr,
                      onPressed: onRetry,
                      expand: false,
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Back-compat alias used in older modules.
typedef AppErrorWidget = ErrorStateWidget;
