import 'package:delivery_app/core/theme/app_colors.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_theme.dart';
import 'package:delivery_app/core/utils/format_money.dart';
import 'package:delivery_app/core/widgets/section_header.dart';
import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/features/cart/presentation/cart_feedback.dart';
import 'package:delivery_app/features/cart/presentation/providers/cart_providers.dart';
import 'package:delivery_app/features/cart/presentation/utils/cart_totals.dart';
import 'package:delivery_app/features/restaurant/data/mock_restaurant_detail_data.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:delivery_app/shared/domain/entities/product.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Restaurant menu screen — RTL / Arabic-first, Material 3, mock data only.
class RestaurantDetailPage extends ConsumerStatefulWidget {
  const RestaurantDetailPage({
    required this.restaurantId,
    super.key,
  });

  final String restaurantId;

  @override
  ConsumerState<RestaurantDetailPage> createState() =>
      _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends ConsumerState<RestaurantDetailPage> {
  late String _selectedCategoryId;
  late List<Product> _allProducts;

  @override
  void initState() {
    super.initState();
    _selectedCategoryId = 'sandwiches';
    _allProducts = MockRestaurantDetailData.products(widget.restaurantId);
  }

  List<Product> get _visibleProducts {
    if (_selectedCategoryId == 'all') return _allProducts;
    return _allProducts
        .where((p) => p.categoryIds.contains(_selectedCategoryId))
        .toList();
  }

  String _categoryTitleAr() {
    for (final c in MockRestaurantDetailData.categories) {
      if (c.id == _selectedCategoryId) return c.labelAr;
    }
    return 'المنتجات';
  }

  void _onAdd(Product product) {
    HapticFeedback.lightImpact();
    final l10n = AppLocalizations.of(context);
    final result =
        ref.read(cartNotifierProvider.notifier).addProduct(product);
    result.fold(
      (failure) {
        if (!mounted) return;
        showCartFailureSnackBar(context, l10n, failure);
      },
      (_) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final semantics = context.marketplaceSemantics;
    final bottomInset = MediaQuery.paddingOf(context).bottom;
    final l10n = AppLocalizations.of(context);
    final cart = ref.watch(cartNotifierProvider);
    final totals = computeCartTotals(cart.items);
    final unitCount =
        cart.items.fold<int>(0, (sum, item) => sum + item.quantity);

    return Scaffold(
      backgroundColor: scheme.surface,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              SliverToBoxAdapter(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final width = constraints.maxWidth;
                    final gutter = AppSpacing.pageHorizontalGutter(width);
                    final maxW = AppSpacing.contentMaxWidth(width);
                    return Align(
                      alignment: AlignmentDirectional.topCenter,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: maxW),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _RestaurantHeroHeader(
                              horizontalPadding: gutter,
                              onBack: () {
                                if (context.canPop()) {
                                  context.pop();
                                }
                              },
                            ),
                            Transform.translate(
                              offset: const Offset(0, -56),
                              child: Padding(
                                padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: gutter,
                                ),
                                child: _RestaurantInfoCard(
                                  semantics: semantics,
                                  scheme: scheme,
                                ),
                              ),
                            ),
                            SizedBox(height: AppSpacing.md),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: gutter,
                              ),
                              child: Text(
                                MockRestaurantDetailData.descriptionAr,
                                textAlign: TextAlign.start,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                            SizedBox(height: AppSpacing.sm),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: gutter,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.schedule_rounded,
                                    size: AppSpacing.xl,
                                    color: scheme.primary,
                                  ),
                                  SizedBox(width: AppSpacing.sm),
                                  Expanded(
                                    child: Text(
                                      MockRestaurantDetailData.openingStatusAr,
                                      textAlign: TextAlign.start,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                            color: scheme.onSurface,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: AppSpacing.lg),
                            _CategoryTabBar(
                              categories: MockRestaurantDetailData.categories,
                              selectedId: _selectedCategoryId,
                              scheme: scheme,
                              onSelected: (id) =>
                                  setState(() => _selectedCategoryId = id),
                            ),
                            SectionHeader(title: _categoryTitleAr()),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverPadding(
                padding: EdgeInsetsDirectional.only(
                  start: AppSpacing.lg,
                  end: AppSpacing.lg,
                  bottom: AppSpacing.colossal + bottomInset,
                ),
                sliver: SliverList.separated(
                  itemCount: _visibleProducts.length,
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSpacing.md,
                    ),
                    child: _DottedDivider(color: scheme.outlineVariant),
                  ),
                  itemBuilder: (context, index) {
                    final p = _visibleProducts[index];
                    return _MenuProductRow(
                      product: p,
                      scheme: scheme,
                      onAdd: () => _onAdd(p),
                    );
                  },
                ),
              ),
            ],
          ),
          PositionedDirectional(
            start: AppSpacing.lg,
            end: AppSpacing.lg,
            bottom: AppSpacing.lg + bottomInset,
            child: _StickyCartSummary(
              itemCount: unitCount,
              total: totals.subtotal,
              scheme: scheme,
              viewCartLabel: l10n.restaurantViewCart,
              unitsLabel: l10n.restaurantCartUnits(unitCount),
              onViewCart: () => context.push(RoutePaths.cart),
            ),
          ),
        ],
      ),
    );
  }
}

class _RestaurantHeroHeader extends StatelessWidget {
  const _RestaurantHeroHeader({
    required this.horizontalPadding,
    required this.onBack,
  });

  final double horizontalPadding;
  final VoidCallback onBack;

  static const double _coverHeight = 228;
  static const double _logoSize = 104;
  static const double _logoOverlap = 52;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return SizedBox(
      height: _coverHeight + _logoOverlap,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: _coverHeight,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  MockRestaurantDetailData.coverAsset,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  errorBuilder: (_, _, _) => ColoredBox(
                    color: scheme.surfaceContainerHighest,
                    child: Icon(
                      Icons.restaurant_rounded,
                      size: AppSpacing.colossal,
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withValues(alpha: 0.42),
                        Colors.black.withValues(alpha: 0.06),
                        Colors.transparent,
                      ],
                      stops: const [0, 0.45, 1],
                    ),
                  ),
                ),
                SafeArea(
                  bottom: false,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      horizontalPadding,
                      AppSpacing.sm,
                      horizontalPadding,
                      0,
                    ),
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _CircleChromeButton(
                            icon: Icons.arrow_back_ios_new_rounded,
                            onPressed: onBack,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _CircleChromeButton(
                                icon: Icons.favorite_border_rounded,
                                onPressed: () {},
                              ),
                              SizedBox(width: AppSpacing.sm),
                              _CircleChromeButton(
                                icon: Icons.share_outlined,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: _RestaurantLogoBadge(diameter: _logoSize, scheme: scheme),
          ),
        ],
      ),
    );
  }
}

class _CircleChromeButton extends StatelessWidget {
  const _CircleChromeButton({
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 2,
      shadowColor: Colors.black26,
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        child: SizedBox(
          width: AppSpacing.minTapTarget - 2,
          height: AppSpacing.minTapTarget - 2,
          child: Icon(
            icon,
            size: AppSpacing.xl - 2,
            color: AppColors.neutral700,
          ),
        ),
      ),
    );
  }
}

class _RestaurantLogoBadge extends StatelessWidget {
  const _RestaurantLogoBadge({
    required this.diameter,
    required this.scheme,
  });

  final double diameter;
  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: scheme.shadow.withValues(alpha: 0.12),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.sm),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.restaurant_menu_rounded,
              color: scheme.primary,
              size: diameter * 0.28,
            ),
            SizedBox(height: AppSpacing.xxs),
            Text(
              'Malaky',
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.labelSmall?.copyWith(
                color: const Color(0xFF1565C0),
                fontWeight: FontWeight.w800,
                height: 1,
                fontSize: 10,
              ),
            ),
            Text(
              'BROAST',
              textAlign: TextAlign.center,
              maxLines: 1,
              style: textTheme.labelSmall?.copyWith(
                color: scheme.primary,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
                height: 1,
                fontSize: 9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RestaurantInfoCard extends StatelessWidget {
  const _RestaurantInfoCard({
    required this.semantics,
    required this.scheme,
  });

  final MarketplaceSemantics semantics;
  final ColorScheme scheme;

  String _money(BuildContext context, Money m) {
    return formatMoneyForLocale(context, m);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: scheme.surface,
      elevation: 3,
      shadowColor: scheme.shadow.withValues(alpha: 0.08),
      surfaceTintColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppRadius.xxl),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(
          AppSpacing.lg,
          AppSpacing.xl + AppSpacing.sm,
          AppSpacing.lg,
          AppSpacing.lg,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: [
                Expanded(
                  child: Text(
                    MockRestaurantDetailData.nameAr,
                    textAlign: TextAlign.start,
                    style: textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(width: AppSpacing.sm),
                Container(
                  width: 22,
                  height: 22,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSpacing.xs),
            Text(
              MockRestaurantDetailData.tagsAr,
              textAlign: TextAlign.start,
              style: textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: AppSpacing.lg),
            Row(
              children: [
                Expanded(
                  child: _StatColumn(
                    label: 'التقييم',
                    scheme: scheme,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textDirection: TextDirection.rtl,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star_rounded,
                          color: semantics.ratingStar,
                          size: AppSpacing.xl,
                        ),
                        SizedBox(width: AppSpacing.xs),
                        Text(
                          '${MockRestaurantDetailData.rating}',
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(width: AppSpacing.xxs),
                        Text(
                          MockRestaurantDetailData.ratingCountLabel,
                          style: textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                _ThinDivider(height: 52, color: scheme.outlineVariant),
                Expanded(
                  child: _StatColumn(
                    label: 'دقيقة',
                    scheme: scheme,
                    child: Text(
                      MockRestaurantDetailData.deliveryTimeRange,
                      textAlign: TextAlign.center,
                      style: textTheme.titleLarge?.copyWith(
                        color: scheme.primary,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                _ThinDivider(height: 52, color: scheme.outlineVariant),
                Expanded(
                  child: _StatColumn(
                    label: 'رسوم التوصيل',
                    scheme: scheme,
                    child: Text(
                      _money(context, MockRestaurantDetailData.deliveryFee),
                      textAlign: TextAlign.center,
                      style: textTheme.titleMedium?.copyWith(
                        color: scheme.primary,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ThinDivider extends StatelessWidget {
  const _ThinDivider({required this.height, required this.color});

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: height,
      color: color.withValues(alpha: 0.65),
    );
  }
}

class _StatColumn extends StatelessWidget {
  const _StatColumn({
    required this.label,
    required this.scheme,
    required this.child,
  });

  final String label;
  final ColorScheme scheme;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        child,
        SizedBox(height: AppSpacing.xs),
        Text(
          label,
          textAlign: TextAlign.center,
          style: textTheme.bodySmall?.copyWith(
            color: scheme.onSurfaceVariant,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _CategoryTabBar extends StatelessWidget {
  const _CategoryTabBar({
    required this.categories,
    required this.selectedId,
    required this.scheme,
    required this.onSelected,
  });

  final List<({String id, String labelAr})> categories;
  final String selectedId;
  final ColorScheme scheme;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 46,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: AppSpacing.lg),
        itemCount: categories.length,
        separatorBuilder: (_, _) =>
            SizedBox(width: AppSpacing.lg + AppSpacing.xs),
        itemBuilder: (context, index) {
          final c = categories[index];
          final selected = c.id == selectedId;
          return GestureDetector(
            onTap: () => onSelected(c.id),
            behavior: HitTestBehavior.opaque,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  c.labelAr,
                  style: textTheme.titleSmall?.copyWith(
                    color:
                        selected ? scheme.primary : scheme.onSurfaceVariant,
                    fontWeight: selected ? FontWeight.w800 : FontWeight.w500,
                  ),
                ),
                SizedBox(height: AppSpacing.xs),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeOut,
                  height: 3,
                  width: selected ? 36 : 0,
                  decoration: BoxDecoration(
                    color: scheme.primary,
                    borderRadius: AppRadius.borderSm,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _MenuProductRow extends StatelessWidget {
  const _MenuProductRow({
    required this.product,
    required this.scheme,
    required this.onAdd,
  });

  final Product product;
  final ColorScheme scheme;
  final VoidCallback onAdd;

  String _price(BuildContext context) {
    return formatMoneyForLocale(context, product.price);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final radius = BorderRadius.circular(AppRadius.md);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                textAlign: TextAlign.start,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              if (product.description.isNotEmpty) ...[
                SizedBox(height: AppSpacing.xs),
                Text(
                  product.description,
                  textAlign: TextAlign.start,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                    height: 1.35,
                  ),
                ),
              ],
              SizedBox(height: AppSpacing.md),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  Material(
                    color: Colors.white,
                    shape: const CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: onAdd,
                      customBorder: const CircleBorder(),
                      child: Ink(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: scheme.primary, width: 1.5),
                        ),
                        child: SizedBox(
                          width: 36,
                          height: 36,
                          child: Icon(
                            Icons.add_rounded,
                            color: scheme.primary,
                            size: AppSpacing.xl,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: AppSpacing.md),
                  Text(
                    _price(context),
                    style: textTheme.titleMedium?.copyWith(
                      color: scheme.primary,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: AppSpacing.md),
        ClipRRect(
          borderRadius: radius,
          child: SizedBox(
            width: 112,
            height: 112,
            child: product.imageUrl != null && product.imageUrl!.isNotEmpty
                ? Image.network(
                    product.imageUrl!,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => ColoredBox(
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
      ],
    );
  }
}

class _DottedDivider extends StatelessWidget {
  const _DottedDivider({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        const dash = 4.0;
        const gap = 5.0;
        final raw = (c.maxWidth / (dash + gap)).floor();
        final n = raw < 1 ? 1 : (raw > 200 ? 200 : raw);
        return Row(
          children: [
            for (var i = 0; i < n; i++) ...[
              Container(
                width: dash,
                height: 1.2,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.75),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              SizedBox(width: gap),
            ],
          ],
        );
      },
    );
  }
}

class _StickyCartSummary extends StatelessWidget {
  const _StickyCartSummary({
    required this.itemCount,
    required this.total,
    required this.scheme,
    required this.viewCartLabel,
    required this.unitsLabel,
    required this.onViewCart,
  });

  final int itemCount;
  final Money total;
  final ColorScheme scheme;
  final String viewCartLabel;
  final String unitsLabel;
  final VoidCallback onViewCart;

  String _formatTotal(BuildContext context) {
    return formatMoneyForLocale(context, total);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      elevation: 6,
      shadowColor: scheme.shadow.withValues(alpha: 0.18),
      borderRadius: AppRadius.borderXl,
      color: scheme.primary,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onViewCart,
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.md,
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        viewCartLabel,
                        style: textTheme.titleMedium?.copyWith(
                          color: scheme.onPrimary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: AppSpacing.xxs),
                      Text(
                        unitsLabel,
                        style: textTheme.bodySmall?.copyWith(
                          color: scheme.onPrimary.withValues(alpha: 0.92),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            end: AppSpacing.sm,
                          ),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: scheme.onPrimary,
                            size: AppSpacing.xxl,
                          ),
                        ),
                        if (itemCount > 0)
                          PositionedDirectional(
                            end: 0,
                            top: -6,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: AppSpacing.xs + 1,
                                vertical: 1,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFF9E0018),
                                borderRadius: AppRadius.borderSm,
                                border: Border.all(
                                  color: scheme.onPrimary.withValues(alpha: 0.95),
                                  width: 1,
                                ),
                              ),
                              child: Text(
                                '$itemCount',
                                style: textTheme.labelSmall?.copyWith(
                                  color: scheme.onPrimary,
                                  fontWeight: FontWeight.w800,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: AppSpacing.xxs),
                    Text(
                      _formatTotal(context),
                      style: textTheme.titleSmall?.copyWith(
                        color: scheme.onPrimary,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
