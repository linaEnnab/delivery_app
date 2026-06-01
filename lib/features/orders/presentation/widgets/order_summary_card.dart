import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/utils/format_money.dart';
import 'package:delivery_app/features/orders/domain/customer_order.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Tappable order row — RTL-safe; opens order tracking when [onTap] fires.
class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({
    required this.order,
    required this.onTap,
    super.key,
  });

  final CustomerOrder order;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final localeTag = Localizations.localeOf(context).toString();
    final dateStr = DateFormat.yMMMd(localeTag).add_jm().format(
          order.placedAt.toLocal(),
        );

    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.md),
      child: Material(
        color: scheme.surfaceContainerLow,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shape: AppRadius.shapeLg(
          side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.55)),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Semantics(
            button: true,
            label: '${l10n.myOrdersTapToTrackSemantics}: ${order.orderNumber}',
            child: Padding(
              padding: const EdgeInsetsDirectional.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _LabeledRow(
                    label: l10n.orderSuccessOrderNumberLabel,
                    value: order.orderNumber,
                    scheme: scheme,
                    textTheme: textTheme,
                  ),
                  SizedBox(height: AppSpacing.sm),
                  _LabeledRow(
                    label: l10n.orderSuccessRestaurantLabel,
                    value: order.restaurantName,
                    scheme: scheme,
                    textTheme: textTheme,
                  ),
                  SizedBox(height: AppSpacing.sm),
                  _StatusLabeledRow(
                    status: order.status,
                    scheme: scheme,
                    textTheme: textTheme,
                    l10n: l10n,
                  ),
                  SizedBox(height: AppSpacing.sm),
                  _LabeledRow(
                    label: l10n.myOrdersFieldTotal,
                    value: formatMoneyForLocale(context, order.total),
                    scheme: scheme,
                    textTheme: textTheme,
                  ),
                  SizedBox(height: AppSpacing.sm),
                  _LabeledRow(
                    label: l10n.myOrdersFieldDate,
                    value: dateStr,
                    scheme: scheme,
                    textTheme: textTheme,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _StatusLabeledRow extends StatelessWidget {
  const _StatusLabeledRow({
    required this.status,
    required this.scheme,
    required this.textTheme,
    required this.l10n,
  });

  final OrderStatus status;
  final ColorScheme scheme;
  final TextTheme textTheme;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final accent = _statusAccentColor(scheme, status);
    final statusText = status.label(l10n);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            l10n.myOrdersFieldStatus,
            style: textTheme.labelLarge?.copyWith(
              color: scheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: AppSpacing.sm,
                height: AppSpacing.sm,
                decoration: BoxDecoration(
                  color: accent,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: AppSpacing.sm),
              Flexible(
                child: Text(
                  statusText,
                  textAlign: TextAlign.end,
                  style: textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: accent,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Color _statusAccentColor(ColorScheme scheme, OrderStatus status) {
  return switch (status) {
    OrderStatus.pending => scheme.onSurfaceVariant,
    OrderStatus.restaurantAccepted => scheme.secondary,
    OrderStatus.preparing => scheme.primary,
    OrderStatus.readyForPickup => scheme.secondary,
    OrderStatus.driverAssigned => scheme.tertiary,
    OrderStatus.pickedUp => scheme.primary,
    OrderStatus.onTheWay => scheme.primary,
    OrderStatus.delivered => scheme.tertiary,
    OrderStatus.cancelled => scheme.error,
  };
}

class _LabeledRow extends StatelessWidget {
  const _LabeledRow({
    required this.label,
    required this.value,
    required this.scheme,
    required this.textTheme,
  });

  final String label;
  final String value;
  final ColorScheme scheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: textTheme.labelLarge?.copyWith(
              color: scheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
