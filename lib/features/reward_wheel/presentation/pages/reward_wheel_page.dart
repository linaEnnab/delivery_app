import 'package:delivery_app/core/router/route_names.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_flow_constants.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_history_entry.dart';
import 'package:delivery_app/features/reward_wheel/presentation/utils/wheel_reward_prize_localizations.dart';
import 'package:delivery_app/features/reward_wheel/presentation/widgets/wheel_reward_asset_image.dart';
import 'package:delivery_app/features/reward_wheel/presentation/providers/reward_wheel_store.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

/// Reward wheel hub — history + how to spin before checkout (mock).
class RewardWheelPage extends ConsumerWidget {
  const RewardWheelPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final state = ref.watch(rewardWheelStoreProvider);
    final bottom = MediaQuery.paddingOf(context).bottom;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.rewardWheelScreenTitle),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final inset = AppSpacing.pageHorizontalGutter(width);
          final maxContent = AppSpacing.contentMaxWidth(width);

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
                    Text(
                      l10n.rewardWheelScreenSubtitle,
                      style: textTheme.bodyLarge?.copyWith(
                        color: scheme.onSurfaceVariant,
                        height: 1.45,
                      ),
                    ),
                    SizedBox(height: AppSpacing.lg),
                    FilledButton.icon(
                      onPressed: () => context.pushNamed(RouteNames.cart),
                      icon: const Icon(Icons.shopping_cart_outlined),
                      label: Text(l10n.rewardWheelGoToCartCta),
                    ),
                    SizedBox(height: AppSpacing.xxl),
                    Text(
                      l10n.rewardWheelHistoryTitle,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: scheme.primary,
                      ),
                    ),
                    SizedBox(height: AppSpacing.md),
                    if (state.wheelRewardHistory.isEmpty)
                      Text(
                        l10n.rewardWheelHistoryEmpty,
                        style: textTheme.bodyMedium?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      )
                    else
                      ...state.wheelRewardHistory.map(
                        (e) => _HistoryRow(
                          entry: e,
                          l10n: l10n,
                          scheme: scheme,
                          textTheme: textTheme,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _HistoryRow extends StatelessWidget {
  const _HistoryRow({
    required this.entry,
    required this.l10n,
    required this.scheme,
    required this.textTheme,
  });

  final WheelRewardHistoryEntry entry;
  final AppLocalizations l10n;
  final ColorScheme scheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final kind = entry.rewardKind;
    final dateFmt = DateFormat.yMMMd(l10n.localeName).add_jm();
    final title = wheelRewardPrizeTitle(l10n, kind);
    final orderLine = entry.orderId == kPreCheckoutWheelOrderId
        ? entry.orderNumber
        : l10n.rewardWheelHistoryOrderLine(entry.orderNumber);

    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.md),
      child: Material(
        color: scheme.surfaceContainerLow,
        shape: AppRadius.shapeMd(
          side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.35)),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.all(AppSpacing.lg),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WheelRewardAssetImage(
                kind: kind,
                size: AppSpacing.massive,
              ),
              SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      title,
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: AppSpacing.xs),
                    Text(
                      orderLine,
                      style: textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                    SizedBox(height: AppSpacing.xs),
                    Text(
                      dateFmt.format(entry.wonAt.toLocal()),
                      style: textTheme.labelMedium?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                    SizedBox(height: AppSpacing.xs),
                    Text(
                      entry.claimed
                          ? l10n.rewardWheelHistoryClaimedBadge
                          : l10n.rewardWheelHistorySavedBadge,
                      style: textTheme.labelLarge?.copyWith(
                        color: entry.claimed ? scheme.secondary : scheme.tertiary,
                        fontWeight: FontWeight.w700,
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
