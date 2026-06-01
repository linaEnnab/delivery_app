import 'package:delivery_app/core/router/route_paths.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/features/orders/data/mock_my_orders_data.dart';
import 'package:delivery_app/features/orders/presentation/widgets/order_summary_card.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// My Orders — active vs completed sections, mock data, RTL-first.
class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final active = mockActiveOrders();
    final completed = mockCompletedOrders();

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
                      l10n.myOrdersHeadline,
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
                      AppSpacing.sm,
                      inset,
                      AppSpacing.sm,
                    ),
                    child: _SectionTitle(text: l10n.myOrdersActiveSection),
                  ),
                ),
              ),
            ),
            if (active.isEmpty)
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
                      child: _EmptyHint(
                        text: l10n.myOrdersEmptyActive,
                        scheme: scheme,
                        textTheme: textTheme,
                      ),
                    ),
                  ),
                ),
              )
            else
              SliverPadding(
                padding: EdgeInsetsDirectional.fromSTEB(
                  inset,
                  0,
                  inset,
                  AppSpacing.lg,
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final order = active[index];
                      return Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: maxContent),
                          child: OrderSummaryCard(
                            order: order,
                            onTap: () => context.push(
                              RoutePaths.orderTracking(order.id),
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: active.length,
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
                      AppSpacing.md,
                      inset,
                      AppSpacing.sm,
                    ),
                    child: _SectionTitle(text: l10n.myOrdersCompletedSection),
                  ),
                ),
              ),
            ),
            if (completed.isEmpty)
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
                      child: _EmptyHint(
                        text: l10n.myOrdersEmptyCompleted,
                        scheme: scheme,
                        textTheme: textTheme,
                      ),
                    ),
                  ),
                ),
              )
            else
              SliverPadding(
                padding: EdgeInsetsDirectional.fromSTEB(
                  inset,
                  0,
                  inset,
                  AppSpacing.xxl + bottom,
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final order = completed[index];
                      return Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: maxContent),
                          child: OrderSummaryCard(
                            order: order,
                            onTap: () => context.push(
                              RoutePaths.orderTracking(order.id),
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: completed.length,
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
  const _SectionTitle({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w800,
            color: scheme.primary,
          ),
    );
  }
}

class _EmptyHint extends StatelessWidget {
  const _EmptyHint({
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
      style: textTheme.bodyLarge?.copyWith(color: scheme.onSurfaceVariant),
    );
  }
}
