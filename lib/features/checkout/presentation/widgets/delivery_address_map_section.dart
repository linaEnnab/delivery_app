import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:delivery_app/shared/domain/value_objects/geo_location.dart';
import 'package:flutter/material.dart';

/// Map placeholder + “choose on map” entry point. Swap body for a map SDK later.
class DeliveryAddressMapSection extends StatelessWidget {
  const DeliveryAddressMapSection({
    super.key,
    required this.currentPoint,
    required this.isPointConfirmed,
    required this.onChooseOnMap,
  });

  final GeoLocation currentPoint;
  final bool isPointConfirmed;
  final VoidCallback onChooseOnMap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: scheme.surfaceContainerLow,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: AppRadius.borderLg,
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.5)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsetsDirectional.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.map_outlined,
                  color: scheme.primary,
                  size: AppSpacing.xxl,
                ),
                SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        l10n.deliveryAddressChooseOnMap,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: AppSpacing.xs),
                      Text(
                        l10n.deliveryAddressMapSectionHint,
                        style: textTheme.bodyMedium?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                      if (isPointConfirmed) ...[
                        SizedBox(height: AppSpacing.sm),
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Chip(
                            avatar: Icon(
                              Icons.check_circle_rounded,
                              size: 18,
                              color: scheme.primary,
                            ),
                            label: Text(
                              l10n.deliveryAddressPinConfirmedLabel,
                              style: textTheme.labelLarge,
                            ),
                            side: BorderSide.none,
                            backgroundColor:
                                scheme.primaryContainer.withValues(alpha: 0.35),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSpacing.md),
            OutlinedButton.icon(
              onPressed: onChooseOnMap,
              icon: const Icon(Icons.place_outlined, size: 20),
              label: Text(l10n.deliveryAddressChooseOnMap),
            ),
            SizedBox(height: AppSpacing.sm),
            Text(
              '${currentPoint.latitude.toStringAsFixed(4)}, '
              '${currentPoint.longitude.toStringAsFixed(4)}',
              style: textTheme.bodySmall?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
