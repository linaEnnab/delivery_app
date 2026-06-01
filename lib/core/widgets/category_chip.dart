import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_typography.dart'
    show AppFontFamilies, AppTypography;
import 'package:flutter/material.dart';

/// Selectable category chip — [AppSpacing] density, [AppRadius] from theme alignment.
class CategoryChip extends StatelessWidget {
  const CategoryChip({
    required this.label,
    required this.selected,
    required this.onSelected,
    super.key,
    this.avatar,
  });

  final String label;
  final bool selected;
  final ValueChanged<bool> onSelected;
  final Widget? avatar;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FilterChip(
      avatar: avatar,
      label: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          vertical: AppSpacing.xxs,
        ),
        child: Text(
          label,
          style: theme.textTheme.labelLarge?.copyWith(
            fontFamily: AppTypography.fontFamily,
            fontFamilyFallback: AppFontFamilies.latinFallback(),
          ),
        ),
      ),
      selected: selected,
      onSelected: onSelected,
      showCheckmark: false,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
      shape: AppRadius.shapeButton(),
    );
  }
}
