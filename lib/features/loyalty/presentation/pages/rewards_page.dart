import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_theme.dart';
import 'package:delivery_app/features/loyalty/data/mock_loyalty_data.dart';
import 'package:delivery_app/features/loyalty/domain/loyalty_models.dart';
import 'package:delivery_app/features/reward_wheel/presentation/widgets/rewards_checkout_wheel_promo.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat, NumberFormat;

/// Loyalty hub: points summary, catalog, history, and spin wheel (mock UI).
class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final semantics = Theme.of(context).extension<MarketplaceSemantics>()!;
    final snapshot = mockLoyaltyRewardsSnapshot();
    final numberFmt = NumberFormat.decimalPattern(l10n.localeName);
    final dateFmt = DateFormat.yMMMd(l10n.localeName);

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final inset = AppSpacing.pageHorizontalGutter(width);
        final maxContent = AppSpacing.contentMaxWidth(width);
        final bottom = MediaQuery.paddingOf(context).bottom;

        return CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            SliverToBoxAdapter(
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContent),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      inset,
                      AppSpacing.xl,
                      inset,
                      AppSpacing.md,
                    ),
                    child: Text(
                      l10n.rewardsHeadline,
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContent),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      inset,
                      0,
                      inset,
                      AppSpacing.lg,
                    ),
                    child: _CurrentPointsCard(
                      snapshot: snapshot,
                      l10n: l10n,
                      scheme: scheme,
                      textTheme: textTheme,
                      semantics: semantics,
                      numberFmt: numberFmt,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContent),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      inset,
                      0,
                      inset,
                      AppSpacing.lg,
                    ),
                    child: const RewardsCheckoutWheelPromo(),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContent),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      inset,
                      AppSpacing.sm,
                      inset,
                      AppSpacing.sm,
                    ),
                    child: _SectionTitle(
                      text: l10n.rewardsAvailableSection,
                      scheme: scheme,
                      textTheme: textTheme,
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.fromSTEB(
                inset,
                0,
                inset,
                AppSpacing.lg,
              ),
              sliver: SliverList.separated(
                itemCount: snapshot.availableRewards.length,
                separatorBuilder: (_, _) => SizedBox(height: AppSpacing.sm),
                itemBuilder: (context, index) {
                  final kind = snapshot.availableRewards[index];
                  return Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: maxContent),
                      child: _AvailableRewardTile(
                        title: _catalogRewardTitle(l10n, kind),
                        icon: _catalogRewardIcon(kind),
                        scheme: scheme,
                        typography: textTheme,
                      ),
                    ),
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContent),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      inset,
                      AppSpacing.md,
                      inset,
                      AppSpacing.sm,
                    ),
                    child: _SectionTitle(
                      text: l10n.rewardsHistorySection,
                      scheme: scheme,
                      textTheme: textTheme,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContent),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      inset,
                      0,
                      inset,
                      AppSpacing.sm,
                    ),
                    child: Text(
                      l10n.rewardsEarnedSection,
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: scheme.onSurface,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.fromSTEB(
                inset,
                0,
                inset,
                AppSpacing.lg,
              ),
              sliver: SliverList.separated(
                itemCount: snapshot.earnedHistory.length,
                separatorBuilder: (_, _) => SizedBox(height: AppSpacing.sm),
                itemBuilder: (context, index) {
                  final row = snapshot.earnedHistory[index];
                  return Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: maxContent),
                      child: _HistoryTile(
                        leading: _HistoryLeadingPill(
                          background: semantics.successContainer,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              l10n.rewardsHistoryPointsEarned(
                                numberFmt.format(row.points),
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              style: textTheme.labelMedium?.copyWith(
                                color: semantics.onSuccessContainer,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        title: _earnedHistoryTitle(l10n, row),
                        subtitle: dateFmt.format(row.at),
                        scheme: scheme,
                        typography: textTheme,
                      ),
                    ),
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContent),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      inset,
                      0,
                      inset,
                      AppSpacing.sm,
                    ),
                    child: Text(
                      l10n.rewardsRedeemedSection,
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: scheme.onSurface,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.fromSTEB(
                inset,
                0,
                inset,
                AppSpacing.lg,
              ),
              sliver: SliverList.separated(
                itemCount: snapshot.redeemedHistory.length,
                separatorBuilder: (_, _) => SizedBox(height: AppSpacing.sm),
                itemBuilder: (context, index) {
                  final row = snapshot.redeemedHistory[index];
                  return Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: maxContent),
                      child: _HistoryTile(
                        leading: _HistoryLeadingPill(
                          background: scheme.secondaryContainer,
                          child: Icon(
                            Icons.check_rounded,
                            color: scheme.onSecondaryContainer,
                            size: AppSpacing.xxl,
                          ),
                        ),
                        title: _redeemedHistoryTitle(l10n, row.kind),
                        subtitle: dateFmt.format(row.at),
                        scheme: scheme,
                        typography: textTheme,
                      ),
                    ),
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContent),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      inset,
                      AppSpacing.md,
                      inset,
                      AppSpacing.sm,
                    ),
                    child: _SectionTitle(
                      text: l10n.rewardsSpinSection,
                      scheme: scheme,
                      textTheme: textTheme,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContent),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      inset,
                      0,
                      inset,
                      AppSpacing.xxl + bottom,
                    ),
                    child: _SpinWheelCard(
                      snapshot: snapshot,
                      l10n: l10n,
                      scheme: scheme,
                      textTheme: textTheme,
                      semantics: semantics,
                      numberFmt: numberFmt,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({
    required this.text,
    required this.scheme,
    required this.textTheme,
  });

  final String text;
  final ColorScheme scheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w800,
        color: scheme.primary,
      ),
    );
  }
}

class _CurrentPointsCard extends StatelessWidget {
  const _CurrentPointsCard({
    required this.snapshot,
    required this.l10n,
    required this.scheme,
    required this.textTheme,
    required this.semantics,
    required this.numberFmt,
  });

  final LoyaltyRewardsSnapshot snapshot;
  final AppLocalizations l10n;
  final ColorScheme scheme;
  final TextTheme textTheme;
  final MarketplaceSemantics semantics;
  final NumberFormat numberFmt;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              semantics.loyaltyAccent.withValues(alpha: 0.22),
              scheme.primaryContainer.withValues(alpha: 0.65),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l10n.rewardsCurrentPointsSection,
                style: textTheme.labelLarge?.copyWith(
                  color: scheme.onPrimaryContainer.withValues(alpha: 0.85),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppSpacing.md),
              Text(
                l10n.rewardsTotalPointsLabel,
                style: textTheme.bodyMedium?.copyWith(
                  color: scheme.onPrimaryContainer.withValues(alpha: 0.9),
                ),
              ),
              SizedBox(height: AppSpacing.xs),
              Text(
                numberFmt.format(snapshot.totalPoints),
                style: textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: scheme.onPrimaryContainer,
                  height: 1.05,
                ),
              ),
              SizedBox(height: AppSpacing.lg),
              Divider(
                height: 1,
                color: scheme.onPrimaryContainer.withValues(alpha: 0.15),
              ),
              SizedBox(height: AppSpacing.md),
              Text(
                l10n.rewardsPointsNeededForNextLabel,
                style: textTheme.bodyMedium?.copyWith(
                  color: scheme.onPrimaryContainer.withValues(alpha: 0.9),
                ),
              ),
              SizedBox(height: AppSpacing.xs),
              Text(
                numberFmt.format(snapshot.pointsNeededForNextReward),
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: scheme.onPrimaryContainer,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AvailableRewardTile extends StatelessWidget {
  const _AvailableRewardTile({
    required this.title,
    required this.icon,
    required this.scheme,
    required this.typography,
  });

  final String title;
  final IconData icon;
  final ColorScheme scheme;
  final TextTheme typography;

  @override
  Widget build(BuildContext context) {
    final rtl = Directionality.of(context) == TextDirection.rtl;
    return Card(
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        ),
        child: Row(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: scheme.tertiaryContainer,
                borderRadius: AppRadius.borderMd,
              ),
              child: SizedBox(
                width: AppSpacing.massive,
                height: AppSpacing.massive,
                child: Icon(icon, color: scheme.onTertiaryContainer),
              ),
            ),
            SizedBox(width: AppSpacing.md),
            Expanded(
              child: Text(
                title,
                style: typography.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Icon(
              rtl ? Icons.chevron_left_rounded : Icons.chevron_right_rounded,
              color: scheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}

class _HistoryLeadingPill extends StatelessWidget {
  const _HistoryLeadingPill({
    required this.background,
    required this.child,
  });

  final Color background;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        borderRadius: AppRadius.borderMd,
      ),
      child: SizedBox(
        width: AppSpacing.massive,
        height: AppSpacing.massive,
        child: Center(child: child),
      ),
    );
  }
}

class _HistoryTile extends StatelessWidget {
  const _HistoryTile({
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.scheme,
    required this.typography,
  });

  final Widget leading;
  final String title;
  final String subtitle;
  final ColorScheme scheme;
  final TextTheme typography;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            leading,
            SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title,
                    style: typography.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppSpacing.xs),
                  Text(
                    subtitle,
                    style: typography.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
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

class _SpinWheelCard extends StatelessWidget {
  const _SpinWheelCard({
    required this.snapshot,
    required this.l10n,
    required this.scheme,
    required this.textTheme,
    required this.semantics,
    required this.numberFmt,
  });

  final LoyaltyRewardsSnapshot snapshot;
  final AppLocalizations l10n;
  final ColorScheme scheme;
  final TextTheme textTheme;
  final MarketplaceSemantics semantics;
  final NumberFormat numberFmt;

  @override
  Widget build(BuildContext context) {
    final eligible = snapshot.spinWheelEligible;
    final requiredPts = snapshot.spinWheelCostPoints;
    final formattedRequired =
        '${numberFmt.format(requiredPts)}\u{00A0}${l10n.rewardsPointsShortUnit}';
    final disabledHint =
        l10n.rewardsSpinDisabledHint(numberFmt.format(requiredPts));

    return Card(
      child: Padding(
        padding: const EdgeInsetsDirectional.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: semantics.loyaltyAccent.withValues(alpha: 0.2),
                    borderRadius: AppRadius.borderMd,
                  ),
                  child: SizedBox(
                    width: AppSpacing.massive,
                    height: AppSpacing.massive,
                    child: Icon(
                      Icons.attractions_rounded,
                      color: scheme.primary,
                    ),
                  ),
                ),
                SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        l10n.rewardsSpinEligibilityLabel,
                        style: textTheme.labelLarge?.copyWith(
                          color: scheme.onSurfaceVariant,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: AppSpacing.xs),
                      Text(
                        eligible
                            ? l10n.rewardsSpinEligible
                            : l10n.rewardsSpinNotEligible,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSpacing.lg),
            Text(
              l10n.rewardsSpinRequiredLabel,
              style: textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
            SizedBox(height: AppSpacing.xs),
            Text(
              l10n.rewardsSpinRequiredValue(formattedRequired),
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w800,
                color: scheme.onSurface,
              ),
            ),
            SizedBox(height: AppSpacing.lg),
            Semantics(
              button: true,
              enabled: eligible,
              label: l10n.rewardsSpinButton,
              hint: eligible ? null : disabledHint,
              child: FilledButton.icon(
                onPressed: eligible
                    ? () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(l10n.rewardsSpinComingSoonSnackbar),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      }
                    : null,
                icon: const Icon(Icons.casino_rounded),
                label: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    vertical: AppSpacing.xs,
                  ),
                  child: Text(l10n.rewardsSpinButton),
                ),
              ),
            ),
            if (!eligible) ...[
              SizedBox(height: AppSpacing.sm),
              Text(
                disabledHint,
                style: textTheme.bodySmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

String _catalogRewardTitle(
  AppLocalizations l10n,
  LoyaltyCatalogRewardKind kind,
) {
  return switch (kind) {
    LoyaltyCatalogRewardKind.freeDelivery => l10n.rewardsRewardFreeDelivery,
    LoyaltyCatalogRewardKind.discount10 => l10n.rewardsRewardDiscount10,
    LoyaltyCatalogRewardKind.discount20 => l10n.rewardsRewardDiscount20,
    LoyaltyCatalogRewardKind.freeFries => l10n.rewardsRewardFreeFries,
    LoyaltyCatalogRewardKind.freeDrink => l10n.rewardsRewardFreeDrink,
    LoyaltyCatalogRewardKind.freeSauce => l10n.rewardsRewardFreeSauce,
  };
}

IconData _catalogRewardIcon(LoyaltyCatalogRewardKind kind) {
  return switch (kind) {
    LoyaltyCatalogRewardKind.freeDelivery => Icons.local_shipping_rounded,
    LoyaltyCatalogRewardKind.discount10 => Icons.percent_rounded,
    LoyaltyCatalogRewardKind.discount20 => Icons.sell_rounded,
    LoyaltyCatalogRewardKind.freeFries => Icons.fastfood_rounded,
    LoyaltyCatalogRewardKind.freeDrink => Icons.local_cafe_rounded,
    LoyaltyCatalogRewardKind.freeSauce => Icons.restaurant_rounded,
  };
}

String _earnedHistoryTitle(
  AppLocalizations l10n,
  LoyaltyEarnedHistoryLine row,
) {
  return switch (row.reason) {
    LoyaltyEarnedReason.completedOrder =>
      l10n.rewardsHistoryEarnedOrder(row.orderReference ?? '—'),
    LoyaltyEarnedReason.reviewBonus => l10n.rewardsHistoryEarnedReview,
    LoyaltyEarnedReason.referralBonus => l10n.rewardsHistoryEarnedReferral,
  };
}

String _redeemedHistoryTitle(AppLocalizations l10n, LoyaltyRedeemedKind kind) {
  return switch (kind) {
    LoyaltyRedeemedKind.freeDelivery => l10n.rewardsHistoryRedeemedFreeDelivery,
    LoyaltyRedeemedKind.discount10 => l10n.rewardsHistoryRedeemedDiscount10,
    LoyaltyRedeemedKind.discount20 => l10n.rewardsHistoryRedeemedDiscount20,
    LoyaltyRedeemedKind.freeFries => l10n.rewardsHistoryRedeemedFreeFries,
    LoyaltyRedeemedKind.freeDrink => l10n.rewardsHistoryRedeemedFreeDrink,
    LoyaltyRedeemedKind.freeSauce => l10n.rewardsHistoryRedeemedFreeSauce,
  };
}
