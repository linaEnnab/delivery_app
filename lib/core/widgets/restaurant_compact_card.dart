import 'package:delivery_app/core/theme/app_colors.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_shadows.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_theme.dart';
import 'package:delivery_app/core/widgets/restaurant_delivery_time.dart';
import 'package:delivery_app/shared/domain/entities/restaurant_summary.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Compact tile for horizontal carousels — image, name, rating, fee, ETA.
class RestaurantCompactCard extends StatelessWidget {
  const RestaurantCompactCard({
    required this.restaurant,
    super.key,
    this.width = 196,
    this.onTap,
    this.currencyCode = 'JOD',
    this.freeDeliveryLabel = 'توصيل مجاني',
    this.minutesSuffix = 'د',
  });

  final RestaurantSummary restaurant;
  final double width;
  final VoidCallback? onTap;
  final String currencyCode;
  final String freeDeliveryLabel;
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
    final shadows = AppShadows.forBrightness(brightness);

    final feeLabel = restaurant.hasFreeDelivery
        ? freeDeliveryLabel
        : moneyFormat.format(restaurant.deliveryFeeAmount);
    final timeLabel = formatRestaurantDeliveryTime(
      restaurant,
      minutesSuffix,
    );

    return SizedBox(
      width: width,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          borderRadius: AppRadius.borderLg,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(
                  AppSpacing.sm,
                  AppSpacing.sm,
                  AppSpacing.sm,
                  AppSpacing.xs,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: AppRadius.borderMd,
                    boxShadow: shadows,
                  ),
                  child: ClipRRect(
                    borderRadius: AppRadius.borderMd,
                    child: AspectRatio(
                      aspectRatio: 1.25,
                      child: Image.network(
                        restaurant.imageUrl,
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
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(
                  AppSpacing.md,
                  0,
                  AppSpacing.md,
                  AppSpacing.md,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: theme.textTheme.titleSmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: AppSpacing.xs),
                    Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                          size: AppSpacing.lg,
                          color: starColor,
                        ),
                        SizedBox(width: AppSpacing.xxs),
                        Text(
                          restaurant.rating.toStringAsFixed(1),
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSpacing.xs),
                    Text(
                      feeLabel,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: scheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      timeLabel,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
