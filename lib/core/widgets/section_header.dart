import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:flutter/material.dart';

/// Section title row — responsive horizontal inset via [AppSpacing.pageHorizontalGutter].
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    required this.title,
    super.key,
    this.subtitle,
    this.trailing,
    this.actionLabel,
    this.onActionTap,
  });

  final String title;
  final String? subtitle;
  final Widget? trailing;

  /// Shown as [TextButton] when [trailing] is null and [onActionTap] is set.
  final String? actionLabel;
  final VoidCallback? onActionTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    Widget? effectiveTrailing = trailing;
    if (effectiveTrailing == null &&
        actionLabel != null &&
        actionLabel!.isNotEmpty &&
        onActionTap != null) {
      effectiveTrailing = TextButton(
        onPressed: onActionTap,
        child: Text(actionLabel!),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final inset = AppSpacing.pageHorizontalGutter(constraints.maxWidth);
        return Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
            inset,
            AppSpacing.sm,
            inset,
            AppSpacing.sm,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: theme.textTheme.titleLarge),
                    if (subtitle != null && subtitle!.isNotEmpty) ...[
                      SizedBox(height: AppSpacing.xxs),
                      Text(
                        subtitle!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (effectiveTrailing != null) ...[
                SizedBox(width: AppSpacing.sm),
                effectiveTrailing,
              ],
            ],
          ),
        );
      },
    );
  }
}
