import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/utils/format_money.dart';
import 'package:delivery_app/features/cart/presentation/providers/cart_providers.dart';
import 'package:delivery_app/features/cart/presentation/utils/cart_totals.dart';
import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/features/checkout/presentation/models/delivery_address_editor_mode.dart';
import 'package:delivery_app/features/checkout/presentation/providers/checkout_delivery_address_provider.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind_helpers.dart';
import 'package:delivery_app/features/reward_wheel/presentation/providers/pre_order_wheel_provider.dart';
import 'package:delivery_app/features/reward_wheel/presentation/utils/wheel_reward_prize_localizations.dart';
import 'package:delivery_app/features/reward_wheel/presentation/widgets/wheel_reward_asset_image.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum _CheckoutPaymentMethod { cashOnDelivery, card }

/// Checkout — mock address, totals from local cart, no backend.
class CheckoutPage extends ConsumerStatefulWidget {
  const CheckoutPage({super.key});

  @override
  ConsumerState<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends ConsumerState<CheckoutPage> {
  _CheckoutPaymentMethod _payment = _CheckoutPaymentMethod.cashOnDelivery;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final cart = ref.watch(cartNotifierProvider);
    final claimed = ref.watch(preOrderWheelProvider).claimedReward;
    final totals = computeCartTotals(
      cart.items,
      appliedCheckoutReward: claimed,
    );
    final address = ref.watch(checkoutDeliveryAddressProvider);
    final bottomInset = MediaQuery.paddingOf(context).bottom;

    if (cart.items.isEmpty) {
      return Scaffold(
        backgroundColor: scheme.surface,
        appBar: AppBar(title: Text(l10n.checkoutTitle)),
        body: Center(
          child: Padding(
            padding: AppSpacing.pagePaddingHorizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  size: AppSpacing.colossal,
                  color: scheme.primary.withValues(alpha: 0.85),
                ),
                SizedBox(height: AppSpacing.lg),
                Text(
                  l10n.checkoutEmptyCartTitle,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: AppSpacing.sm),
                Text(
                  l10n.checkoutEmptyCartSubtitle,
                  textAlign: TextAlign.center,
                  style: textTheme.bodyLarge?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: scheme.surface,
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text(
                l10n.checkoutTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (claimed != null) ...[
              SizedBox(width: AppSpacing.sm),
              Chip(
                avatar: WheelRewardAssetImage(
                  kind: claimed,
                  size: 22,
                ),
                label: Text(
                  l10n.checkoutRewardAppliedBadge,
                  style: textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: const EdgeInsetsDirectional.only(
                  start: AppSpacing.xs,
                  end: AppSpacing.sm,
                ),
              ),
            ],
          ],
        ),
      ),
      body: CustomScrollView(
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
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _SectionCard(
                  scheme: scheme,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        l10n.checkoutDeliverySection,
                        style: textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: AppSpacing.lg),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: scheme.primary,
                            size: AppSpacing.xxl,
                          ),
                          SizedBox(width: AppSpacing.md),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  l10n.checkoutCityLabel,
                                  style: textTheme.labelLarge?.copyWith(
                                    color: scheme.onSurfaceVariant,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: AppSpacing.xs),
                                Text(
                                  address.city,
                                  style: textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(height: AppSpacing.md),
                                Text(
                                  l10n.checkoutStreetLabel,
                                  style: textTheme.labelLarge?.copyWith(
                                    color: scheme.onSurfaceVariant,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: AppSpacing.xs),
                                Text(
                                  address.line1,
                                  style: textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: AppSpacing.md),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: TextButton.icon(
                          onPressed: () {
                            HapticFeedback.selectionClick();
                            final mode =
                                address.line1.trim().isEmpty
                                    ? DeliveryAddressEditorMode.add
                                    : DeliveryAddressEditorMode.edit;
                            context.pushNamed(
                              RouteNames.checkoutDeliveryAddress,
                              extra: mode,
                            );
                          },
                          icon: const Icon(Icons.edit_outlined, size: 20),
                          label: Text(l10n.checkoutAddEditAddress),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppSpacing.md),
                _SectionCard(
                  scheme: scheme,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        l10n.checkoutAddressDetailsTitle,
                        style: textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: AppSpacing.lg),
                      _AddressDetailRow(
                        label: l10n.checkoutBuildingNumber,
                        value: address.buildingNumber,
                        scheme: scheme,
                        textTheme: textTheme,
                      ),
                      SizedBox(height: AppSpacing.sm),
                      _AddressDetailRow(
                        label: l10n.checkoutApartmentNumber,
                        value: address.apartmentNumber,
                        scheme: scheme,
                        textTheme: textTheme,
                      ),
                      SizedBox(height: AppSpacing.sm),
                      _AddressDetailRow(
                        label: l10n.checkoutFloorNumber,
                        value: address.floorNumber,
                        scheme: scheme,
                        textTheme: textTheme,
                      ),
                      SizedBox(height: AppSpacing.sm),
                      _AddressDetailRow(
                        label: l10n.checkoutDeliveryNotes,
                        value: address.deliveryNotes,
                        scheme: scheme,
                        textTheme: textTheme,
                        multiline: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppSpacing.md),
                _SectionCard(
                  scheme: scheme,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        l10n.cartOrderSummaryTitle,
                        style: textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: AppSpacing.lg),
                      _SummaryRow(
                        label: l10n.cartSubtotal,
                        value: formatMoneyForLocale(context, totals.subtotal),
                        scheme: scheme,
                        textTheme: textTheme,
                      ),
                      SizedBox(height: AppSpacing.sm),
                      _SummaryRow(
                        label: l10n.cartDeliveryFee,
                        value: formatMoneyForLocale(context, totals.deliveryFee),
                        scheme: scheme,
                        textTheme: textTheme,
                      ),
                      SizedBox(height: AppSpacing.sm),
                      _SummaryRow(
                        label: l10n.cartDiscount,
                        value:
                            '-${formatMoneyForLocale(context, totals.discount)}',
                        scheme: scheme,
                        textTheme: textTheme,
                        valueColor: scheme.tertiary,
                      ),
                      if (claimed != null) ...[
                        SizedBox(height: AppSpacing.md),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            WheelRewardAssetImage(
                              kind: claimed,
                              size: 48,
                            ),
                            SizedBox(width: AppSpacing.md),
                            Expanded(
                              child: Text(
                                wheelRewardPrizeTitle(l10n, claimed),
                                style: textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      if (claimed != null && claimed.loyaltyPointsBonus > 0) ...[
                        SizedBox(height: AppSpacing.sm),
                        _SummaryRow(
                          label: l10n.checkoutRewardLoyaltySummaryLabel,
                          value: l10n.checkoutRewardLoyaltySummaryValue(
                            claimed.loyaltyPointsBonus,
                          ),
                          scheme: scheme,
                          textTheme: textTheme,
                          valueColor: scheme.secondary,
                        ),
                      ],
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: AppSpacing.md,
                        ),
                        child: Divider(color: scheme.outlineVariant),
                      ),
                      _SummaryRow(
                        label: l10n.cartFinalTotal,
                        value: formatMoneyForLocale(context, totals.finalTotal),
                        scheme: scheme,
                        textTheme: textTheme,
                        emphasize: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppSpacing.md),
                _SectionCard(
                  scheme: scheme,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        l10n.checkoutPaymentTitle,
                        style: textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: AppSpacing.sm),
                      RadioGroup<_CheckoutPaymentMethod>(
                        groupValue: _payment,
                        onChanged: (_CheckoutPaymentMethod? value) {
                          if (value == null) return;
                          setState(() => _payment = value);
                          HapticFeedback.selectionClick();
                        },
                        child: Column(
                          children: [
                            RadioListTile<_CheckoutPaymentMethod>(
                              contentPadding: EdgeInsets.zero,
                              title: Text(l10n.checkoutPaymentCod),
                              value: _CheckoutPaymentMethod.cashOnDelivery,
                            ),
                            RadioListTile<_CheckoutPaymentMethod>(
                              contentPadding: EdgeInsets.zero,
                              title: Text(l10n.checkoutPaymentCard),
                              subtitle: Text(
                                l10n.checkoutPaymentCardPlaceholder,
                                style: textTheme.bodySmall?.copyWith(
                                  color: scheme.onSurfaceVariant,
                                ),
                              ),
                              value: _CheckoutPaymentMethod.card,
                              enabled: false,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 96 + bottomInset),
              ]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Material(
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
                  HapticFeedback.mediumImpact();
                  if (claimed != null) {
                    ref.read(preOrderWheelProvider.notifier).clear();
                    ref.read(cartNotifierProvider.notifier).clear();
                    context.pushReplacementNamed(
                      RouteNames.checkoutOrderSuccess,
                    );
                  } else {
                    context.pushNamed(RouteNames.checkoutRewardWheel);
                  }
                },
                child: Text(
                  claimed != null
                      ? l10n.checkoutSubmitOrder
                      : l10n.checkoutPlaceOrder,
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

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.scheme,
    required this.child,
  });

  final ColorScheme scheme;
  final Widget child;

  @override
  Widget build(BuildContext context) {
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
        child: child,
      ),
    );
  }
}

class _AddressDetailRow extends StatelessWidget {
  const _AddressDetailRow({
    required this.label,
    required this.value,
    required this.scheme,
    required this.textTheme,
    this.multiline = false,
  });

  final String label;
  final String? value;
  final ColorScheme scheme;
  final TextTheme textTheme;
  final bool multiline;

  static const String _dash = '—';

  @override
  Widget build(BuildContext context) {
    final display = (value == null || value!.trim().isEmpty) ? _dash : value!;

    return Row(
      crossAxisAlignment:
          multiline ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: textTheme.bodyLarge?.copyWith(
              color: scheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            display,
            style: textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
            maxLines: multiline ? 6 : 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
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
