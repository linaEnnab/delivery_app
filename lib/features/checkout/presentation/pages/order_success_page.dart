import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/theme/app_theme.dart';
import 'package:delivery_app/core/widgets/core_widgets.dart';
import 'package:delivery_app/features/checkout/presentation/providers/placed_order_provider.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Full-screen confirmation after placing an order — RTL-first, design tokens.
class OrderSuccessPage extends ConsumerStatefulWidget {
  const OrderSuccessPage({super.key});

  @override
  ConsumerState<OrderSuccessPage> createState() => _OrderSuccessPageState();
}

class _OrderSuccessPageState extends ConsumerState<OrderSuccessPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _celebrate;
  late final Animation<double> _scale;
  late final Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _celebrate = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 720),
    );
    _scale = CurvedAnimation(
      parent: _celebrate,
      curve: const Interval(0, 0.65, curve: Curves.elasticOut),
    );
    _fade = CurvedAnimation(
      parent: _celebrate,
      curve: const Interval(0, 0.35, curve: Curves.easeOut),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        HapticFeedback.mediumImpact();
        _celebrate.forward();
      }
    });
  }

  @override
  void dispose() {
    _celebrate.dispose();
    super.dispose();
  }

  void _goHome(BuildContext context) {
    HapticFeedback.selectionClick();
    context.go(RoutePaths.home);
  }

  void _trackOrder(BuildContext context, String orderId) {
    HapticFeedback.selectionClick();
    context.push(RoutePaths.orderTracking(orderId));
  }

  @override
  Widget build(BuildContext context) {
    final confirmation = ref.watch(placedOrderProvider);
    final l10n = AppLocalizations.of(context);

    if (confirmation == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) context.go(RoutePaths.home);
      });
      return const Scaffold(body: SizedBox.shrink());
    }

    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final semantics = Theme.of(context).extension<MarketplaceSemantics>()!;
    final c = confirmation;
    final bottom = MediaQuery.paddingOf(context).bottom;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _goHome(context);
      },
      child: Scaffold(
        backgroundColor: scheme.surface,
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final maxW = AppSpacing.contentMaxWidth(constraints.maxWidth);
              return Align(
                alignment: Alignment.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxW),
                  child: SingleChildScrollView(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      AppSpacing.pageHorizontalGutter(constraints.maxWidth),
                      AppSpacing.xxxl,
                      AppSpacing.pageHorizontalGutter(constraints.maxWidth),
                      AppSpacing.xl + bottom,
                    ),
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Semantics(
                          label: l10n.orderSuccessIconSemantics,
                          child: FadeTransition(
                            opacity: _fade,
                            child: ScaleTransition(
                              scale: _scale,
                              child: Align(
                                child: _SuccessMark(colors: semantics),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: AppSpacing.sectionGap(constraints.maxWidth)),
                        Text(
                          l10n.orderSuccessHeadline,
                          textAlign: TextAlign.center,
                          style: textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w800,
                            height: 1.25,
                          ),
                        ),
                        SizedBox(height: AppSpacing.xl),
                        _InfoCard(
                          scheme: scheme,
                          textTheme: textTheme,
                          rows: [
                            _InfoRowData(
                              label: l10n.orderSuccessOrderNumberLabel,
                              value: c.orderNumber,
                              icon: Icons.tag_rounded,
                            ),
                            _InfoRowData(
                              label: l10n.orderSuccessRestaurantLabel,
                              value: c.restaurantName,
                              icon: Icons.storefront_rounded,
                            ),
                            _InfoRowData(
                              label: l10n.orderSuccessEtaLabel,
                              value: l10n.orderSuccessEtaRange(
                                c.etaMinMinutes,
                                c.etaMaxMinutes,
                              ),
                              icon: Icons.schedule_rounded,
                            ),
                          ],
                        ),
                        SizedBox(height: AppSpacing.xxxl),
                        PrimaryButton(
                          label: l10n.orderSuccessTrackOrder,
                          leading: const Icon(Icons.map_outlined, size: 22),
                          onPressed: () => _trackOrder(context, c.orderId),
                        ),
                        SizedBox(height: AppSpacing.md),
                        SecondaryButton(
                          label: l10n.orderSuccessBackHome,
                          leading: const Icon(Icons.home_outlined, size: 22),
                          onPressed: () => _goHome(context),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _SuccessMark extends StatelessWidget {
  const _SuccessMark({required this.colors});

  final MarketplaceSemantics colors;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.successContainer,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: colors.success.withValues(alpha: 0.22),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xxl),
        child: Icon(
          Icons.check_rounded,
          size: AppSpacing.colossal + AppSpacing.sm,
          color: colors.success,
        ),
      ),
    );
  }
}

class _InfoRowData {
  const _InfoRowData({
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final String value;
  final IconData icon;
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({
    required this.scheme,
    required this.textTheme,
    required this.rows,
  });

  final ColorScheme scheme;
  final TextTheme textTheme;
  final List<_InfoRowData> rows;

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
        child: Column(
          children: [
            for (var i = 0; i < rows.length; i++) ...[
              if (i > 0) Divider(height: AppSpacing.xxl, color: scheme.outlineVariant),
              _InfoRow(
                data: rows[i],
                scheme: scheme,
                textTheme: textTheme,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.data,
    required this.scheme,
    required this.textTheme,
  });

  final _InfoRowData data;
  final ColorScheme scheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(data.icon, color: scheme.primary, size: AppSpacing.xxl),
        SizedBox(width: AppSpacing.md),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                data.label,
                style: textTheme.labelLarge?.copyWith(
                  color: scheme.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppSpacing.xs),
              Text(
                data.value,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
