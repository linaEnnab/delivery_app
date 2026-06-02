import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/widgets/core_widgets.dart';
import 'package:delivery_app/features/home/data/home_feed_static_data.dart';
import 'package:delivery_app/features/restaurant/presentation/providers/restaurant_providers.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:delivery_app/shared/domain/entities/restaurant_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Marketplace home feed — restaurants from API, RTL-first layout.
class HomeFeedTab extends ConsumerStatefulWidget {
  const HomeFeedTab({super.key});

  @override
  ConsumerState<HomeFeedTab> createState() => _HomeFeedTabState();
}

class _HomeFeedTabState extends ConsumerState<HomeFeedTab> {
  int _selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final restaurantsAsync = ref.watch(restaurantsListProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final inset = AppSpacing.pageHorizontalGutter(width);
        final maxContent = AppSpacing.contentMaxWidth(width);
        final promoWidth = (width * 0.86).clamp(280.0, 420.0);
        final compactCardWidth = (width * 0.46).clamp(168.0, 220.0);

        return restaurantsAsync.when(
          data: (restaurants) {
            final featured = _featuredSlice(restaurants);
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
                      child: Column(
                        children: [
                          _HomeHeroAkoolSection(
                            inset: inset,
                            scheme: scheme,
                            l10n: l10n,
                          ),
                          SizedBox(height: AppSpacing.xl + 10),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: maxContent),
                      child: SectionHeader(
                        title: l10n.homePromosSection,
                        actionLabel: l10n.homeViewAll,
                        onActionTap: () {},
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: maxContent),
                      child: SizedBox(
                        height: 118,
                        child: ListView.separated(
                          padding: EdgeInsetsDirectional.fromSTEB(
                            inset,
                            0,
                            inset,
                            AppSpacing.md,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: HomeFeedStaticData.promos.length,
                          separatorBuilder: (context, _) =>
                              SizedBox(width: AppSpacing.md),
                          itemBuilder: (context, index) {
                            final p = HomeFeedStaticData.promos[index];
                            return SizedBox(
                              width: promoWidth,
                              child: OfferBanner(
                                title: p.title,
                                subtitle: p.subtitle,
                                leadingIcon: p.icon,
                                onTap: () {},
                              ),
                            );
                          },
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
                      child: SectionHeader(title: l10n.homeCategoriesSection),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: maxContent),
                      child: SizedBox(
                        height: 52,
                        child: ListView.separated(
                          padding: EdgeInsetsDirectional.fromSTEB(
                            inset,
                            0,
                            inset,
                            AppSpacing.md,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: HomeFeedStaticData.categories.length,
                          separatorBuilder: (context, _) =>
                              SizedBox(width: AppSpacing.sm),
                          itemBuilder: (context, index) {
                            final c = HomeFeedStaticData.categories[index];
                            return CategoryChip(
                              label: c.label,
                              selected: _selectedCategoryIndex == index,
                              avatar: Icon(c.icon, size: AppSpacing.xl),
                              onSelected: (_) {
                                setState(() => _selectedCategoryIndex = index);
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                if (featured.isNotEmpty) ...[
                  SliverToBoxAdapter(
                    child: Align(
                      alignment: AlignmentDirectional.topCenter,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: maxContent),
                        child: SectionHeader(
                          title: l10n.homeFeaturedSection,
                          actionLabel: l10n.homeViewAll,
                          onActionTap: () {},
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Align(
                      alignment: AlignmentDirectional.topCenter,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: maxContent),
                        child: SizedBox(
                          height: 278,
                          child: ListView.separated(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              inset,
                              0,
                              inset,
                              AppSpacing.lg,
                            ),
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemCount: featured.length,
                            separatorBuilder: (context, _) =>
                                SizedBox(width: AppSpacing.md),
                            itemBuilder: (context, index) {
                              final r = featured[index];
                              return RestaurantCompactCard(
                                restaurant: r,
                                width: compactCardWidth,
                                currencyCode: r.currencyCode,
                                onTap: () => context.push(
                                  RoutePaths.restaurantDetail(r.id),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
                SliverToBoxAdapter(
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: maxContent),
                      child: SectionHeader(
                        title: l10n.homeNearbySection,
                        actionLabel: l10n.homeViewAll,
                        onActionTap: () {},
                      ),
                    ),
                  ),
                ),
                if (restaurants.isEmpty)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                        inset,
                        AppSpacing.lg,
                        inset,
                        AppSpacing.huge,
                      ),
                      child: Text(
                        l10n.homeEmptyRestaurantsHint,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  )
                else
                  SliverPadding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      inset,
                      0,
                      inset,
                      AppSpacing.huge,
                    ),
                    sliver: SliverList.separated(
                      itemCount: restaurants.length,
                      separatorBuilder: (context, _) =>
                          SizedBox(height: AppSpacing.md),
                      itemBuilder: (context, index) {
                        final r = restaurants[index];
                        return RestaurantCard(
                          restaurant: r,
                          currencyCode: r.currencyCode,
                          onTap: () => context.push(
                            RoutePaths.restaurantDetail(r.id),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    e.toString(),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: AppSpacing.md),
                  FilledButton(
                    onPressed: () =>
                        ref.invalidate(restaurantsListProvider),
                    child: Text(l10n.homeRetryRestaurants),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// First few venues for the horizontal carousel (same API list as below).
  List<RestaurantSummary> _featuredSlice(List<RestaurantSummary> all) {
    const maxFeatured = 4;
    if (all.length <= maxFeatured) return all;
    return all.sublist(0, maxFeatured);
  }
}

/// Red header: region row, Akool branding + hero product image, overlapping search pill.
class _HomeHeroAkoolSection extends StatelessWidget {
  const _HomeHeroAkoolSection({
    required this.inset,
    required this.scheme,
    required this.l10n,
  });

  static const String _heroAsset = 'assets/images/home_hero_akool.png';
  static const double _searchOverlap = 26;

  final double inset;
  final ColorScheme scheme;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final streetLine = Localizations.localeOf(context).languageCode == 'ar'
        ? HomeFeedStaticData.heroStreetLineAr
        : HomeFeedStaticData.heroStreetLineEn;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                scheme.primary,
                Color.lerp(
                      scheme.primary,
                      scheme.surface,
                      0.12,
                    ) ??
                    scheme.primary,
              ],
            ),
          ),
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                inset,
                AppSpacing.md,
                inset,
                AppSpacing.xl + _searchOverlap,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: scheme.onPrimary,
                                  size: AppSpacing.xxl,
                                ),
                                SizedBox(width: AppSpacing.sm),
                                Flexible(
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          l10n.homeRegionLabel,
                                          style: textTheme.labelMedium?.copyWith(
                                            color: scheme.onPrimary.withValues(
                                              alpha: 0.9,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: AppSpacing.xxs),
                                        Text(
                                          streetLine,
                                          style:
                                              textTheme.titleMedium?.copyWith(
                                            color: scheme.onPrimary,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: scheme.onPrimary,
                                  size: AppSpacing.xl,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        tooltip: l10n.homeNotificationsTooltip,
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none_rounded,
                          color: scheme.onPrimary,
                          size: AppSpacing.xxl,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSpacing.lg),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 12,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    l10n.homeBrandName,
                                    style: textTheme.headlineLarge?.copyWith(
                                      color: scheme.onPrimary,
                                      fontWeight: FontWeight.w800,
                                      height: 1.05,
                                      fontSize: 40,
                                    ),
                                  ),
                                  SizedBox(height: AppSpacing.xxs),
                                  Text(
                                    l10n.homeBrandTagline,
                                    style: textTheme.titleMedium?.copyWith(
                                      color: scheme.onPrimary
                                          .withValues(alpha: 0.95),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 11,
                          child: SizedBox(
                            height: 152,
                            child: ClipRect(
                              child: OverflowBox(
                                alignment: Alignment.centerLeft,
                                maxWidth: 300,
                                child: Image.asset(
                                  _heroAsset,
                                  height: 152,
                                  fit: BoxFit.contain,
                                  alignment: Alignment.centerLeft,
                                  filterQuality: FilterQuality.medium,
                                ),
                              ),
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
        ),
        PositionedDirectional(
          start: inset,
          end: inset,
          bottom: -_searchOverlap,
          child: SearchField(
            readOnly: true,
            hintText: l10n.homeSearchHint,
          ),
        ),
      ],
    );
  }
}
