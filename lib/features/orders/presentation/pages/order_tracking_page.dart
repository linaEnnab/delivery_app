import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/features/orders/domain/customer_order.dart';
import 'package:delivery_app/features/orders/presentation/providers/order_review_submission_provider.dart';
import 'package:delivery_app/features/orders/presentation/providers/orders_providers.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

/// Order tracking — timeline, map placeholder, RTL-safe; opened from My Orders or checkout success.
class OrderTrackingPage extends ConsumerWidget {
  const OrderTrackingPage({
    required this.orderId,
    super.key,
  });

  final String orderId;

  static const List<OrderStatus> _happyPath = [
    OrderStatus.pending,
    OrderStatus.restaurantAccepted,
    OrderStatus.preparing,
    OrderStatus.readyForPickup,
    OrderStatus.driverAssigned,
    OrderStatus.pickedUp,
    OrderStatus.onTheWay,
    OrderStatus.delivered,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final orderAsync = ref.watch(customerOrderProvider(orderId));
    final bottom = MediaQuery.paddingOf(context).bottom;

    return Scaffold(
      backgroundColor: scheme.surface,
      appBar: AppBar(
        title: Text(l10n.orderTrackingTitle),
      ),
      body: orderAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => _OrderTrackingErrorBody(
          message: error is UserMessageException
              ? error.message
              : error.toString(),
          onRetry: () => ref.invalidate(customerOrderProvider(orderId)),
          l10n: l10n,
          scheme: scheme,
          textTheme: textTheme,
          bottom: bottom,
        ),
        data: (order) => LayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.maxWidth;
                final inset = AppSpacing.pageHorizontalGutter(width);
                final maxContent = AppSpacing.contentMaxWidth(width);
                final cancelled = order.status == OrderStatus.cancelled;

                return SingleChildScrollView(
                  padding: EdgeInsetsDirectional.fromSTEB(
                    inset,
                    AppSpacing.lg,
                    inset,
                    AppSpacing.xxl + bottom,
                  ),
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: maxContent),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (cancelled) ...[
                            _CancelledBanner(
                              l10n: l10n,
                              scheme: scheme,
                              textTheme: textTheme,
                            ),
                            SizedBox(height: AppSpacing.lg),
                          ],
                          _TrackingDetailsCard(
                            order: order,
                            l10n: l10n,
                            scheme: scheme,
                            textTheme: textTheme,
                            showFulfillmentExtras: !cancelled,
                          ),
                          if (!cancelled && order.status.canSubmitReview)
                            Consumer(
                              builder: (context, ref, _) {
                                final submitted = ref.watch(
                                  orderReviewSubmittedIdsProvider,
                                );
                                if (submitted.contains(order.id)) {
                                  return const SizedBox.shrink();
                                }
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    SizedBox(height: AppSpacing.lg),
                                    FilledButton.tonalIcon(
                                      onPressed: () => context.push(
                                        RoutePaths.orderReview(order.id),
                                      ),
                                      icon: const Icon(Icons.star_rate_rounded),
                                      label: Text(l10n.orderTrackingRateOrder),
                                    ),
                                  ],
                                );
                              },
                            ),
                          if (!cancelled) ...[
                            SizedBox(height: AppSpacing.lg),
                            _OrderTrackingMapPlaceholder(
                              l10n: l10n,
                              scheme: scheme,
                              textTheme: textTheme,
                            ),
                          ],
                          SizedBox(height: AppSpacing.xxl),
                          if (!cancelled) ...[
                            Text(
                              l10n.orderTrackingTimelineTitle,
                              style: textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: AppSpacing.md),
                            _Timeline(
                              order: order,
                              l10n: l10n,
                              scheme: scheme,
                              textTheme: textTheme,
                              happyPath: _happyPath,
                            ),
                          ] else
                            Text(
                              order.status.label(l10n),
                              textAlign: TextAlign.center,
                              style: textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w800,
                                color: scheme.error,
                              ),
                            ),
                          SizedBox(height: AppSpacing.xxl),
                          Text(
                            l10n.orderTrackingDemoHint,
                            textAlign: TextAlign.center,
                            style: textTheme.bodySmall?.copyWith(
                              color: scheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
      ),
    );
  }
}

class _OrderTrackingErrorBody extends StatelessWidget {
  const _OrderTrackingErrorBody({
    required this.message,
    required this.onRetry,
    required this.l10n,
    required this.scheme,
    required this.textTheme,
    required this.bottom,
  });

  final String message;
  final VoidCallback onRetry;
  final AppLocalizations l10n;
  final ColorScheme scheme;
  final TextTheme textTheme;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
        AppSpacing.lg,
        AppSpacing.xxl,
        AppSpacing.lg,
        AppSpacing.xxl + bottom,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(color: scheme.onSurfaceVariant),
            ),
            SizedBox(height: AppSpacing.md),
            FilledButton(
              onPressed: onRetry,
              child: Text(l10n.homeRetryRestaurants),
            ),
          ],
        ),
      ),
    );
  }
}

String _formatEta(BuildContext context, DateTime utc) {
  final local = utc.toLocal();
  final localeTag = Localizations.localeOf(context).toString();
  final today = DateTime.now();
  final sameCalendarDay = local.year == today.year &&
      local.month == today.month &&
      local.day == today.day;
  if (sameCalendarDay) {
    return DateFormat.jm(localeTag).format(local);
  }
  return DateFormat.yMMMd(localeTag).add_jm().format(local);
}

class _CancelledBanner extends StatelessWidget {
  const _CancelledBanner({
    required this.l10n,
    required this.scheme,
    required this.textTheme,
  });

  final AppLocalizations l10n;
  final ColorScheme scheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: scheme.errorContainer,
      shape: AppRadius.shapeMd(),
      child: Padding(
        padding: const EdgeInsetsDirectional.all(AppSpacing.lg),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.cancel_outlined, color: scheme.onErrorContainer),
            SizedBox(width: AppSpacing.md),
            Expanded(
              child: Text(
                l10n.orderTrackingCancelledHeadline,
                style: textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: scheme.onErrorContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TrackingDetailsCard extends StatelessWidget {
  const _TrackingDetailsCard({
    required this.order,
    required this.l10n,
    required this.scheme,
    required this.textTheme,
    required this.showFulfillmentExtras,
  });

  final CustomerOrder order;
  final AppLocalizations l10n;
  final ColorScheme scheme;
  final TextTheme textTheme;
  final bool showFulfillmentExtras;

  @override
  Widget build(BuildContext context) {
    final driverLine = order.driverName.trim().isEmpty
        ? l10n.orderTrackingDriverNotAssigned
        : order.driverName;

    return Material(
      color: scheme.surfaceContainerLow,
      shape: AppRadius.shapeLg(
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.5)),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _kv(l10n.orderSuccessOrderNumberLabel, order.orderNumber),
            Divider(height: AppSpacing.xxl, color: scheme.outlineVariant),
            _kv(l10n.orderSuccessRestaurantLabel, order.restaurantName),
            if (showFulfillmentExtras) ...[
              Divider(height: AppSpacing.xxl, color: scheme.outlineVariant),
              _kv(l10n.orderTrackingDriverLabel, driverLine),
              Divider(height: AppSpacing.xxl, color: scheme.outlineVariant),
              _RatingRow(
                label: l10n.orderTrackingRatingLabel,
                rating: order.driverRating,
                scheme: scheme,
                textTheme: textTheme,
              ),
              Divider(height: AppSpacing.xxl, color: scheme.outlineVariant),
              _kv(
                l10n.orderTrackingEtaLabel,
                _formatEta(context, order.estimatedArrivalAt),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _kv(String k, String v) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          k,
          style: textTheme.labelLarge?.copyWith(
            color: scheme.onSurfaceVariant,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: AppSpacing.xs),
        Text(
          v,
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}

class _RatingRow extends StatelessWidget {
  const _RatingRow({
    required this.label,
    required this.rating,
    required this.scheme,
    required this.textTheme,
  });

  final String label;
  final double? rating;
  final ColorScheme scheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: textTheme.labelLarge?.copyWith(
            color: scheme.onSurfaceVariant,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: AppSpacing.xs),
        if (rating != null)
          Row(
            children: [
              Icon(
                Icons.star_rounded,
                size: AppSpacing.xxl,
                color: scheme.tertiary,
              ),
              SizedBox(width: AppSpacing.xs),
              Text(
                rating!.toStringAsFixed(1),
                style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
              ),
            ],
          )
        else
          Text(
            '—',
            style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
          ),
      ],
    );
  }
}

/// Map placeholder only — no Google Maps SDK.
class _OrderTrackingMapPlaceholder extends StatelessWidget {
  const _OrderTrackingMapPlaceholder({
    required this.l10n,
    required this.scheme,
    required this.textTheme,
  });

  final AppLocalizations l10n;
  final ColorScheme scheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      label: '${l10n.orderTrackingMapTitle}. ${l10n.orderTrackingMapBody}',
      child: Material(
        color: scheme.surfaceContainerLow,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shape: AppRadius.shapeLg(
          side: BorderSide(
            color: scheme.outlineVariant.withValues(alpha: 0.55),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: ColoredBox(
            color: scheme.surfaceContainerHigh,
            child: Center(
              child: Padding(
                padding: const EdgeInsetsDirectional.all(AppSpacing.lg),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.map_outlined,
                      size: AppSpacing.xxxl,
                      color: scheme.primary,
                    ),
                    SizedBox(height: AppSpacing.md),
                    Text(
                      l10n.orderTrackingMapTitle,
                      textAlign: TextAlign.center,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: AppSpacing.xs),
                    Text(
                      l10n.orderTrackingMapBody,
                      textAlign: TextAlign.center,
                      style: textTheme.bodyMedium?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Timeline extends StatelessWidget {
  const _Timeline({
    required this.order,
    required this.l10n,
    required this.scheme,
    required this.textTheme,
    required this.happyPath,
  });

  final CustomerOrder order;
  final AppLocalizations l10n;
  final ColorScheme scheme;
  final TextTheme textTheme;
  final List<OrderStatus> happyPath;

  @override
  Widget build(BuildContext context) {
    final current = order.status.trackingTimelineStepIndex;
    if (current == null) return const SizedBox.shrink();

    final delivered = order.status == OrderStatus.delivered;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < happyPath.length; i++)
          _TimelineStep(
            label: happyPath[i].label(l10n),
            isDone: i < current || (delivered && i == current),
            isCurrent: i == current && !delivered,
            isLast: i == happyPath.length - 1,
            scheme: scheme,
            textTheme: textTheme,
          ),
      ],
    );
  }
}

class _TimelineStep extends StatelessWidget {
  const _TimelineStep({
    required this.label,
    required this.isDone,
    required this.isCurrent,
    required this.isLast,
    required this.scheme,
    required this.textTheme,
  });

  final String label;
  final bool isDone;
  final bool isCurrent;
  final bool isLast;
  final ColorScheme scheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final activeColor = scheme.primary;
    final muted = scheme.outlineVariant;
    final lineColor = isDone ? activeColor : muted;
    final dotFill = isDone
        ? activeColor
        : isCurrent
            ? activeColor
            : scheme.surfaceContainerHighest;
    final dotBorder = isCurrent ? activeColor : muted;

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: AppSpacing.xxl,
            child: Column(
              children: [
                Container(
                  width: AppSpacing.lg + 2,
                  height: AppSpacing.lg + 2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: dotFill,
                    border: Border.all(color: dotBorder, width: 2),
                  ),
                  child: isDone
                      ? Icon(
                          Icons.check_rounded,
                          size: AppSpacing.md,
                          color: scheme.onPrimary,
                        )
                      : null,
                ),
                if (!isLast)
                  Expanded(
                    child: Container(
                      width: 2,
                      color: lineColor,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(width: AppSpacing.md),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: isLast ? 0 : AppSpacing.lg,
              ),
              child: Text(
                label,
                style: textTheme.titleSmall?.copyWith(
                  fontWeight: isCurrent ? FontWeight.w900 : FontWeight.w600,
                  color: isCurrent || isDone
                      ? scheme.onSurface
                      : scheme.onSurfaceVariant,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
