import 'package:delivery_app/core/theme/app_colors.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_shadows.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_theme.dart';
import 'package:delivery_app/core/widgets/restaurant_delivery_time.dart';
import 'package:delivery_app/shared/domain/entities/restaurant_summary.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Restaurant row — RTL-aware [Row], responsive thumb, [AppShadows] thumbnail.
class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    required this.restaurant,
    super.key,
    this.onTap,
    this.currencyCode = 'AED',
    this.closedLabel = 'مغلق',
    this.freeDeliveryLabel = 'توصيل مجاني',
    this.sponsoredLabel = 'إعلان',
    this.minutesSuffix = 'د',
  });

  final RestaurantSummary restaurant;
  final VoidCallback? onTap;
  final String currencyCode;

  /// Arabic-first defaults; override for localization.
  final String closedLabel;
  final String freeDeliveryLabel;
  final String sponsoredLabel;
  final String minutesSuffix;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final brightness = theme.brightness;
    final semantics = theme.extension<MarketplaceSemantics>();
    final starColor = semantics?.ratingStar ?? AppColors.ratingStar;

    final locale = Localizations.localeOf(context).toString();
    final moneyFormat = NumberFormat.simpleCurrency(
      name: currencyCode,
      locale: locale,
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final thumb = width >= AppBreakpoints.medium
            ? AppSpacing.massive + AppSpacing.xxxl
            : AppSpacing.massive + AppSpacing.xxl;

        return Card(
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onTap,
            borderRadius: AppRadius.borderLg,
            child: Padding(
              padding: const EdgeInsetsDirectional.all(AppSpacing.md),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Thumbnail(
                    size: thumb,
                    imageUrl: restaurant.imageUrl,
                    isOpen: restaurant.isOpen,
                    brightness: brightness,
                    closedLabel: closedLabel,
                  ),
                  SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                restaurant.name,
                                style: theme.textTheme.titleMedium,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (restaurant.isSponsored) ...[
                              SizedBox(width: AppSpacing.sm),
                              _SponsoredBadge(
                                theme: theme,
                                label: sponsoredLabel,
                              ),
                            ],
                          ],
                        ),
                        SizedBox(height: AppSpacing.xs),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              size: AppSpacing.xl,
                              color: starColor,
                            ),
                            SizedBox(width: AppSpacing.xxs),
                            Text(
                              restaurant.rating.toStringAsFixed(1),
                              style: theme.textTheme.labelLarge,
                            ),
                            SizedBox(width: AppSpacing.xs),
                            Text(
                              '(${restaurant.reviewCount})',
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                        SizedBox(height: AppSpacing.sm),
                        Wrap(
                          spacing: AppSpacing.sm,
                          runSpacing: AppSpacing.sm,
                          children: [
                            _MetaChip(
                              icon: Icons.schedule_rounded,
                              label: formatRestaurantDeliveryTime(
                                restaurant,
                                minutesSuffix,
                              ),
                              scheme: scheme,
                              theme: theme,
                            ),
                            _MetaChip(
                              icon: Icons.payments_outlined,
                              label: restaurant.hasFreeDelivery
                                  ? freeDeliveryLabel
                                  : moneyFormat.format(
                                      restaurant.deliveryFeeAmount,
                                    ),
                              scheme: scheme,
                              theme: theme,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Thumbnail extends StatelessWidget {
  const _Thumbnail({
    required this.size,
    required this.imageUrl,
    required this.isOpen,
    required this.brightness,
    required this.closedLabel,
  });

  final double size;
  final String imageUrl;
  final bool isOpen;
  final Brightness brightness;
  final String closedLabel;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final shadows = AppShadows.forBrightness(brightness);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: AppRadius.borderMd,
            boxShadow: shadows,
          ),
          child: ClipRRect(
            borderRadius: AppRadius.borderMd,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => ColoredBox(
                color: scheme.surfaceContainerHighest,
                child: Icon(
                  Icons.storefront_rounded,
                  color: scheme.onSurfaceVariant,
                  size: AppSpacing.xxxl,
                ),
              ),
            ),
          ),
        ),
        if (!isOpen)
          Positioned.fill(
            child: ClipRRect(
              borderRadius: AppRadius.borderMd,
              child: ColoredBox(
                color: scheme.scrim.withValues(alpha: 0.45),
                child: Center(
                  child: Text(
                    closedLabel,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColors.onPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _MetaChip extends StatelessWidget {
  const _MetaChip({
    required this.icon,
    required this.label,
    required this.scheme,
    required this.theme,
  });

  final IconData icon;
  final String label;
  final ColorScheme scheme;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: AppSpacing.lg, color: scheme.onSurfaceVariant),
        SizedBox(width: AppSpacing.xxs),
        Text(label, style: theme.textTheme.bodySmall),
      ],
    );
  }
}

class _SponsoredBadge extends StatelessWidget {
  const _SponsoredBadge({required this.theme, required this.label});

  final ThemeData theme;
  final String label;

  @override
  Widget build(BuildContext context) {
    final scheme = theme.colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: scheme.secondaryContainer,
        borderRadius: AppRadius.borderSm,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.xxs,
        ),
        child: Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: scheme.onSecondaryContainer,
          ),
        ),
      ),
    );
  }
}
