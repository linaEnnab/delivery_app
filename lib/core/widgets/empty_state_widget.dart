import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

/// Empty list / no-results — RTL-safe, responsive max width.
class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({
    required this.title,
    super.key,
    this.subtitle,
    this.icon = Icons.inbox_outlined,
    this.actionLabel,
    this.onAction,
  });

  final String title;
  final String? subtitle;
  final IconData icon;

  /// Arabic-first default when [onAction] is provided: «تصفح العروض».
  final String? actionLabel;
  final VoidCallback? onAction;

  static const String defaultActionAr = 'تصفح العروض';

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
                    icon,
                    size: AppSpacing.massive + AppSpacing.sm,
                    color: scheme.onSurfaceVariant,
                  ),
                  SizedBox(height: AppSpacing.md),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleMedium,
                  ),
                  if (subtitle != null && subtitle!.isNotEmpty) ...[
                    SizedBox(height: AppSpacing.sm),
                    Text(
                      subtitle!,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                  if (onAction != null) ...[
                    SizedBox(height: AppSpacing.xl),
                    PrimaryButton(
                      label: (actionLabel != null && actionLabel!.isNotEmpty)
                          ? actionLabel!
                          : defaultActionAr,
                      onPressed: onAction,
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
