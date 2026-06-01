import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/utils/format_money.dart';
import 'package:delivery_app/features/cart/presentation/providers/cart_providers.dart';
import 'package:delivery_app/features/cart/presentation/utils/cart_totals.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind_helpers.dart';
import 'package:delivery_app/features/reward_wheel/presentation/providers/pre_order_wheel_provider.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:delivery_app/shared/domain/entities/cart.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Shopping cart — mock commerce only; RTL-safe layout.
class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final cart = ref.watch(cartNotifierProvider);
    final claimed = ref.watch(preOrderWheelProvider).claimedReward;
    final totals = computeCartTotals(
      cart.items,
      appliedCheckoutReward: claimed,
    );
    final bottomInset = MediaQuery.paddingOf(context).bottom;

    Future<void> confirmClear() async {
      final ok = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text(l10n.cartClearConfirmTitle),
          content: Text(l10n.cartClearConfirmBody),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(false),
              child: Text(l10n.cartClearCancel),
            ),
            FilledButton(
              onPressed: () => Navigator.of(ctx).pop(true),
              child: Text(l10n.cartClearConfirmAction),
            ),
          ],
        ),
      );
      if (ok == true && context.mounted) {
        ref.read(cartNotifierProvider.notifier).clear();
        ref.read(preOrderWheelProvider.notifier).clear();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.cartClearedSnackbar)),
        );
      }
    }

    return Scaffold(
      backgroundColor: scheme.surface,
      appBar: AppBar(
        title: Text(l10n.cartTitle),
        actions: [
          if (cart.items.isNotEmpty)
            IconButton(
              tooltip: l10n.cartClearTooltip,
              icon: const Icon(Icons.delete_outline_rounded),
              onPressed: confirmClear,
            ),
        ],
      ),
      body: cart.items.isEmpty
          ? _EmptyCartBody(l10n: l10n, scheme: scheme, textTheme: textTheme)
          : CustomScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              slivers: [
                SliverPadding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                    AppSpacing.lg,
                    AppSpacing.md,
                    AppSpacing.lg,
                    AppSpacing.sm,
                  ),
                  sliver: SliverList.separated(
                    itemCount: cart.items.length,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: AppSpacing.md),
                    itemBuilder: (context, index) {
                      final item = cart.items[index];
                      return _CartLineCard(
                        item: item,
                        scheme: scheme,
                        textTheme: textTheme,
                        onIncrement: () {
                          HapticFeedback.selectionClick();
                          ref
                              .read(cartNotifierProvider.notifier)
                              .increaseQuantity(item.id);
                        },
                        onDecrement: () {
                          HapticFeedback.selectionClick();
                          ref
                              .read(cartNotifierProvider.notifier)
                              .decreaseQuantity(item.id);
                        },
                        onRemove: () {
                          HapticFeedback.lightImpact();
                          ref
                              .read(cartNotifierProvider.notifier)
                              .removeItem(item.id);
                        },
                        formatMoney: (m) => formatMoneyForLocale(context, m),
                        removeTooltip: l10n.cartRemoveItemTooltip,
                      );
                    },
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                    AppSpacing.lg,
                    AppSpacing.lg,
                    AppSpacing.lg,
                    AppSpacing.md,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: _OrderSummaryCard(
                      l10n: l10n,
                      scheme: scheme,
                      textTheme: textTheme,
                      totals: totals,
                      claimedReward: claimed,
                      formatMoney: (m) => formatMoneyForLocale(context, m),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 96 + bottomInset),
                ),
              ],
            ),
      bottomNavigationBar: cart.items.isEmpty
          ? null
          : Material(
              elevation: 12,
              color: scheme.surface,
              surfaceTintColor: scheme.surfaceTint,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                    AppSpacing.lg,
                    AppSpacing.md,
                    AppSpacing.lg,
                    AppSpacing.md,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: AppSpacing.minTapTarget,
                    child: FilledButton(
                      onPressed: () {
                        context.pushNamed(RouteNames.checkout);
                      },
                      child: Text(
                        '${l10n.cartCheckout} · ${formatMoneyForLocale(context, totals.finalTotal)}',
                        style: textTheme.titleMedium?.copyWith(
                          color: scheme.onPrimary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}

class _EmptyCartBody extends StatelessWidget {
  const _EmptyCartBody({
    required this.l10n,
    required this.scheme,
    required this.textTheme,
  });

  final AppLocalizations l10n;
  final ColorScheme scheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppSpacing.pagePaddingHorizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart_outlined,
              size: AppSpacing.colossal,
              color: scheme.primary.withValues(alpha: 0.85),
            ),
            SizedBox(height: AppSpacing.lg),
            Text(
              l10n.cartEmptyTitle,
              textAlign: TextAlign.center,
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: AppSpacing.sm),
            Text(
              l10n.cartEmptySubtitle,
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CartLineCard extends StatelessWidget {
  const _CartLineCard({
    required this.item,
    required this.scheme,
    required this.textTheme,
    required this.onIncrement,
    required this.onDecrement,
    required this.onRemove,
    required this.formatMoney,
    required this.removeTooltip,
  });

  final CartItem item;
  final ColorScheme scheme;
  final TextTheme textTheme;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onRemove;
  final String Function(Money) formatMoney;
  final String removeTooltip;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(AppRadius.md);

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
        padding: const EdgeInsetsDirectional.all(AppSpacing.md),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: radius,
              child: SizedBox(
                width: 88,
                height: 88,
                child: item.imageUrl != null && item.imageUrl!.isNotEmpty
                    ? Image.network(
                        item.imageUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            ColoredBox(
                          color: scheme.surfaceContainerHighest,
                          child: Icon(
                            Icons.fastfood_outlined,
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                      )
                    : ColoredBox(
                        color: scheme.surfaceContainerHighest,
                        child: Icon(
                          Icons.fastfood_outlined,
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
              ),
            ),
            SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    item.productName,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: AppSpacing.sm),
                  Text(
                    formatMoney(item.lineTotal),
                    textAlign: TextAlign.start,
                    style: textTheme.titleSmall?.copyWith(
                      color: scheme.primary,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: AppSpacing.md),
                  Row(
                    children: [
                      _QtyIconButton(
                        icon: Icons.remove_rounded,
                        onPressed: onDecrement,
                        scheme: scheme,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: AppSpacing.md,
                        ),
                        child: Text(
                          '${item.quantity}',
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      _QtyIconButton(
                        icon: Icons.add_rounded,
                        onPressed: onIncrement,
                        scheme: scheme,
                      ),
                      const Spacer(),
                      IconButton(
                        tooltip: removeTooltip,
                        onPressed: onRemove,
                        icon: Icon(
                          Icons.delete_outline_rounded,
                          color: scheme.error,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _QtyIconButton extends StatelessWidget {
  const _QtyIconButton({
    required this.icon,
    required this.onPressed,
    required this.scheme,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: scheme.surface,
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        customBorder: const CircleBorder(),
        child: Ink(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: scheme.primary, width: 1.5),
          ),
          child: SizedBox(
            width: 40,
            height: 40,
            child: Icon(icon, color: scheme.primary, size: AppSpacing.xl),
          ),
        ),
      ),
    );
  }
}

class _OrderSummaryCard extends StatelessWidget {
  const _OrderSummaryCard({
    required this.l10n,
    required this.scheme,
    required this.textTheme,
    required this.totals,
    required this.claimedReward,
    required this.formatMoney,
  });

  final AppLocalizations l10n;
  final ColorScheme scheme;
  final TextTheme textTheme;
  final CartTotals totals;
  final WheelRewardKind? claimedReward;
  final String Function(Money) formatMoney;

  @override
  Widget build(BuildContext context) {
    final bonus = claimedReward?.loyaltyPointsBonus ?? 0;
    return Material(
      color: scheme.surfaceContainerLow,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: AppRadius.borderLg,
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.5)),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              l10n.cartOrderSummaryTitle,
              style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
            ),
            SizedBox(height: AppSpacing.lg),
            _SummaryRow(
              label: l10n.cartSubtotal,
              value: formatMoney(totals.subtotal),
              scheme: scheme,
              textTheme: textTheme,
            ),
            SizedBox(height: AppSpacing.sm),
            _SummaryRow(
              label: l10n.cartDeliveryFee,
              value: formatMoney(totals.deliveryFee),
              scheme: scheme,
              textTheme: textTheme,
            ),
            SizedBox(height: AppSpacing.sm),
            _SummaryRow(
              label: l10n.cartDiscount,
              value: '-${formatMoney(totals.discount)}',
              scheme: scheme,
              textTheme: textTheme,
              valueColor: scheme.tertiary,
            ),
            if (bonus > 0) ...[
              SizedBox(height: AppSpacing.sm),
              _SummaryRow(
                label: l10n.checkoutRewardLoyaltySummaryLabel,
                value: l10n.checkoutRewardLoyaltySummaryValue(bonus),
                scheme: scheme,
                textTheme: textTheme,
                valueColor: scheme.secondary,
              ),
            ],
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
              child: Divider(color: scheme.outlineVariant),
            ),
            _SummaryRow(
              label: l10n.cartFinalTotal,
              value: formatMoney(totals.finalTotal),
              scheme: scheme,
              textTheme: textTheme,
              emphasize: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({
    required this.label,
    required this.value,
    required this.scheme,
    required this.textTheme,
    this.emphasize = false,
    this.valueColor,
  });

  final String label;
  final String value;
  final ColorScheme scheme;
  final TextTheme textTheme;
  final bool emphasize;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    final base = textTheme.bodyLarge;
    final style = emphasize
        ? textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w900,
            color: scheme.onSurface,
          )
        : base?.copyWith(color: scheme.onSurfaceVariant);

    final valueStyle = emphasize
        ? textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w900,
            color: scheme.primary,
          )
        : base?.copyWith(
            fontWeight: FontWeight.w700,
            color: valueColor ?? scheme.onSurface,
          );

    return Row(
      children: [
        Expanded(
          child: Text(label, style: style, textAlign: TextAlign.start),
        ),
        Text(value, style: valueStyle, textAlign: TextAlign.end),
      ],
    );
  }
}
