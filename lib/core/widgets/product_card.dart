import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_shadows.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/shared/domain/entities/product.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Menu item card — [AppRadius], [AppSpacing], optional [AppShadows] on media.
class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.product,
    super.key,
    this.onTap,
    this.onAddTap,
    this.unavailableLabel = 'غير متاح',
    this.addToCartTooltip = 'إضافة للسلة',
  });

  final Product product;
  final VoidCallback? onTap;
  final VoidCallback? onAddTap;

  /// Arabic-first copy; replace with `AppLocalizations` when wired.
  final String unavailableLabel;
  final String addToCartTooltip;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final brightness = theme.brightness;
    final locale = Localizations.localeOf(context).toString();
    final money = NumberFormat.simpleCurrency(
      name: product.price.currencyCode,
      locale: locale,
    ).format(product.price.amount);

    final imageHeight = AppSpacing.massive * 2;

    return Container(
      decoration: BoxDecoration(
        borderRadius: AppRadius.borderLg,
        boxShadow: AppShadows.card(brightness),
      ),
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shape: AppRadius.shapeLg(),
        child: InkWell(
          onTap: onTap,
          borderRadius: AppRadius.borderLg,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: imageHeight,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    if (product.imageUrl != null &&
                        product.imageUrl!.isNotEmpty)
                      Image.network(
                        product.imageUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (_, _, _) =>
                            _ImageFallback(scheme: scheme),
                      )
                    else
                      _ImageFallback(scheme: scheme),
                    if (!product.isAvailable)
                      ColoredBox(
                        color: scheme.scrim.withValues(alpha: 0.35),
                        child: Center(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: scheme.surfaceContainerHigh,
                              borderRadius: AppRadius.borderSm,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: AppSpacing.md,
                                vertical: AppSpacing.xs,
                              ),
                              child: Text(
                                unavailableLabel,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.all(AppSpacing.md),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: theme.textTheme.titleSmall,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (product.description.isNotEmpty) ...[
                            SizedBox(height: AppSpacing.xs),
                            Text(
                              product.description,
                              style: theme.textTheme.bodySmall,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                          SizedBox(height: AppSpacing.sm),
                          Text(
                            money,
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: scheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (onAddTap != null && product.isAvailable)
                      IconButton(
                        onPressed: onAddTap,
                        icon: Icon(
                          Icons.add_shopping_cart_outlined,
                          color: scheme.primary,
                        ),
                        tooltip: addToCartTooltip,
                        style: IconButton.styleFrom(
                          minimumSize: const Size(
                            AppSpacing.minTapTarget,
                            AppSpacing.minTapTarget,
                          ),
                        ),
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

class _ImageFallback extends StatelessWidget {
  const _ImageFallback({required this.scheme});

  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: scheme.surfaceContainerHighest,
      child: Icon(
        Icons.fastfood_outlined,
        color: scheme.onSurfaceVariant,
        size: AppSpacing.huge,
      ),
    );
  }
}
