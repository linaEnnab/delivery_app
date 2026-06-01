import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/features/cart/presentation/providers/cart_providers.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Rewards-tab promo: spin the wheel at checkout before submitting (mock).
class RewardsCheckoutWheelPromo extends ConsumerWidget {
  const RewardsCheckoutWheelPromo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartEmpty = ref.watch(cartNotifierProvider).items.isEmpty;
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              scheme.primary.withValues(alpha: 0.12),
              scheme.tertiaryContainer.withValues(alpha: 0.55),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: scheme.primaryContainer,
                      borderRadius: AppRadius.borderMd,
                    ),
                    child: SizedBox(
                      width: AppSpacing.massive,
                      height: AppSpacing.massive,
                      child: Icon(
                        Icons.casino_rounded,
                        color: scheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          l10n.rewardsCheckoutWheelTitle,
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(height: AppSpacing.xs),
                        Text(
                          cartEmpty
                              ? l10n.rewardsCheckoutWheelBodyEmptyCart
                              : l10n.rewardsCheckoutWheelBody,
                          style: textTheme.bodyMedium?.copyWith(
                            color: scheme.onSurfaceVariant,
                            height: 1.35,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.lg),
              FilledButton.icon(
                onPressed: cartEmpty
                    ? null
                    : () => context.pushNamed(RouteNames.checkout),
                icon: const Icon(Icons.shopping_bag_outlined),
                label: Text(l10n.rewardsCheckoutWheelOpenCheckout),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
