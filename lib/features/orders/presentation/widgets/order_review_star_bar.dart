import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:flutter/material.dart';

/// Tappable 1–5 star row — RTL-aware [Row], Material 3 colors.
class OrderReviewStarBar extends StatelessWidget {
  const OrderReviewStarBar({
    required this.value,
    required this.onChanged,
    required this.starSemanticsLabel,
    super.key,
  });

  /// Selected rating 1–5, or null if none.
  final int? value;
  final ValueChanged<int> onChanged;

  /// Accessibility label for the star at [1-based index] (1…5).
  final String Function(int star1Based) starSemanticsLabel;

  static const int _max = 5;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final filledColor = scheme.tertiary;
    final emptyColor = scheme.outlineVariant;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (var i = 1; i <= _max; i++) ...[
          if (i > 1) SizedBox(width: AppSpacing.sm),
          Semantics(
            button: true,
            label: starSemanticsLabel(i),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => onChanged(i),
                customBorder: const CircleBorder(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.all(AppSpacing.xs),
                  child: Icon(
                    Icons.star_rounded,
                    size: AppSpacing.xxxl,
                    color: value != null && i <= value!
                        ? filledColor
                        : emptyColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
