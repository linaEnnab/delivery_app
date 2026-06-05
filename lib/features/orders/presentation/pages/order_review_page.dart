import 'package:delivery_app/core/theme/app_radius.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/widgets/core_widgets.dart';
import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/features/orders/domain/customer_order.dart';
import 'package:delivery_app/features/orders/presentation/providers/order_review_submission_provider.dart';
import 'package:delivery_app/features/orders/presentation/providers/orders_providers.dart';
import 'package:delivery_app/features/orders/presentation/widgets/order_review_star_bar.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

const int _kMaxReviewImages = 5;

final class _PlaceholderImage {
  const _PlaceholderImage({required this.id, required this.hue});

  final String id;
  final int hue;
}

/// Post-delivery review — mock image placeholders, dual star ratings, RTL-first.
class OrderReviewPage extends ConsumerStatefulWidget {
  const OrderReviewPage({required this.orderId, super.key});

  final String orderId;

  @override
  ConsumerState<OrderReviewPage> createState() => _OrderReviewPageState();
}

class _OrderReviewPageState extends ConsumerState<OrderReviewPage> {
  int? _restaurantStars;
  int? _driverStars;
  final _commentController = TextEditingController();
  final List<_PlaceholderImage> _images = [];
  bool _submitting = false;
  var _nextHue = 12;

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  Future<void> _onAddImageTap() async {
    if (_images.length >= _kMaxReviewImages) {
      if (!mounted) return;
      final l10n = AppLocalizations.of(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.orderReviewMaxImagesSnackbar(_kMaxReviewImages))),
      );
      return;
    }
    await Future<void>.delayed(const Duration(milliseconds: 320));
    if (!mounted) return;
    setState(() {
      _nextHue = (_nextHue + 47) % 360;
      _images.add(_PlaceholderImage(id: const Uuid().v4(), hue: _nextHue));
    });
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context).orderReviewMockImageAddedSnackbar),
      ),
    );
  }

  Future<void> _onSubmit(String orderId) async {
    if (_restaurantStars == null || _driverStars == null) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context).orderReviewSelectBothRatingsHint),
        ),
      );
      return;
    }
    setState(() => _submitting = true);
    await Future<void>.delayed(const Duration(milliseconds: 450));
    if (!mounted) return;
    ref.read(orderReviewSubmittedIdsProvider.notifier).markSubmitted(orderId);
    setState(() => _submitting = false);
    final l10n = AppLocalizations.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l10n.orderReviewSubmittedSnackbar)),
    );
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final orderAsync = ref.watch(customerOrderProvider(widget.orderId));
    final submitted = ref.watch(orderReviewSubmittedIdsProvider);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final bottom = MediaQuery.paddingOf(context).bottom;

    return orderAsync.when(
      loading: () => Scaffold(
        appBar: AppBar(title: Text(l10n.orderReviewTitle)),
        body: const Center(child: CircularProgressIndicator()),
      ),
      error: (error, _) => Scaffold(
        appBar: AppBar(title: Text(l10n.orderReviewTitle)),
        body: _ReviewBlockedBody(
          message: error is UserMessageException
              ? error.message
              : l10n.orderReviewUnknownOrderBody,
          scheme: scheme,
          textTheme: textTheme,
          bottom: bottom,
        ),
      ),
      data: (order) => _buildReviewScaffold(
        context: context,
        order: order,
        submitted: submitted,
        l10n: l10n,
        scheme: scheme,
        textTheme: textTheme,
        bottom: bottom,
      ),
    );
  }

  Widget _buildReviewScaffold({
    required BuildContext context,
    required CustomerOrder order,
    required Set<String> submitted,
    required AppLocalizations l10n,
    required ColorScheme scheme,
    required TextTheme textTheme,
    required double bottom,
  }) {
    late final Widget body;
    if (submitted.contains(order.id)) {
      body = _ReviewBlockedBody(
        message: l10n.orderReviewAlreadySubmittedBody,
        scheme: scheme,
        textTheme: textTheme,
        bottom: bottom,
      );
    } else if (!order.status.canSubmitReview) {
      body = _ReviewBlockedBody(
        message: l10n.orderReviewNotDeliveredBody,
        scheme: scheme,
        textTheme: textTheme,
        bottom: bottom,
      );
    } else {
      body = LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final inset = AppSpacing.pageHorizontalGutter(width);
          final maxContent = AppSpacing.contentMaxWidth(width);
          final canSubmit =
              _restaurantStars != null && _driverStars != null && !_submitting;

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
                    _SummaryCard(
                      order: order,
                      l10n: l10n,
                      scheme: scheme,
                      textTheme: textTheme,
                    ),
                    SizedBox(height: AppSpacing.xxl),
                    Text(
                      l10n.orderReviewRestaurantRating,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: AppSpacing.sm),
                    OrderReviewStarBar(
                      value: _restaurantStars,
                      onChanged: (v) => setState(() => _restaurantStars = v),
                      starSemanticsLabel: l10n.orderReviewSetStarSemantics,
                    ),
                    SizedBox(height: AppSpacing.xxl),
                    Text(
                      l10n.orderReviewDriverRating,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: AppSpacing.sm),
                    OrderReviewStarBar(
                      value: _driverStars,
                      onChanged: (v) => setState(() => _driverStars = v),
                      starSemanticsLabel: l10n.orderReviewSetStarSemantics,
                    ),
                    SizedBox(height: AppSpacing.xxl),
                    CustomTextField(
                      controller: _commentController,
                      labelText: l10n.orderReviewCommentLabel,
                      hintText: l10n.orderReviewCommentHint,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.newline,
                      minLines: 3,
                      maxLines: 6,
                      textCapitalization: TextCapitalization.sentences,
                    ),
                    SizedBox(height: AppSpacing.xxl),
                    Text(
                      l10n.orderReviewAddImages,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: AppSpacing.xs),
                    Text(
                      l10n.orderReviewImagesSectionHint,
                      style: textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                    SizedBox(height: AppSpacing.md),
                    SecondaryButton(
                      label: l10n.orderReviewAddImages,
                      leading: Icon(
                        Icons.add_photo_alternate_outlined,
                        color: scheme.primary,
                        size: AppSpacing.xl,
                      ),
                      onPressed: _submitting ? null : _onAddImageTap,
                    ),
                    if (_images.isNotEmpty) ...[
                      SizedBox(height: AppSpacing.lg),
                      Semantics(
                        container: true,
                        label: l10n.orderReviewImagesSectionHint,
                        child: SizedBox(
                          height: AppSpacing.xxxl + AppSpacing.xl,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: _images.length,
                            separatorBuilder: (_, _) =>
                                SizedBox(width: AppSpacing.sm),
                            itemBuilder: (context, index) {
                              final img = _images[index];
                              return _ReviewImageTile(
                                hue: img.hue,
                                scheme: scheme,
                                semanticsLabel:
                                    l10n.orderReviewImagePreviewSemantics,
                                removeSemantics: l10n.orderReviewRemoveImageSemantics,
                                onRemove: _submitting
                                    ? null
                                    : () => setState(() {
                                          _images.removeAt(index);
                                        }),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                    SizedBox(height: AppSpacing.xxl),
                    PrimaryButton(
                      label: l10n.orderReviewSubmit,
                      isLoading: _submitting,
                      onPressed: canSubmit ? () => _onSubmit(order.id) : null,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: scheme.surface,
      appBar: AppBar(
        title: Text(l10n.orderReviewTitle),
      ),
      body: body,
    );
  }
}

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({
    required this.order,
    required this.l10n,
    required this.scheme,
    required this.textTheme,
  });

  final CustomerOrder order;
  final AppLocalizations l10n;
  final ColorScheme scheme;
  final TextTheme textTheme;

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
            Text(
              l10n.orderReviewSummaryTitle,
              style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
            ),
            SizedBox(height: AppSpacing.lg),
            _kv(l10n.orderSuccessRestaurantLabel, order.restaurantName),
            Divider(height: AppSpacing.xxl, color: scheme.outlineVariant),
            _kv(l10n.orderTrackingDriverLabel, driverLine),
            Divider(height: AppSpacing.xxl, color: scheme.outlineVariant),
            _kv(l10n.orderSuccessOrderNumberLabel, order.orderNumber),
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

class _ReviewImageTile extends StatelessWidget {
  const _ReviewImageTile({
    required this.hue,
    required this.scheme,
    required this.semanticsLabel,
    required this.removeSemantics,
    required this.onRemove,
  });

  final int hue;
  final ColorScheme scheme;
  final String semanticsLabel;
  final String removeSemantics;
  final VoidCallback? onRemove;

  @override
  Widget build(BuildContext context) {
    final fill = HSLColor.fromAHSL(1, hue.toDouble(), 0.42, 0.52).toColor();
    return Semantics(
      label: semanticsLabel,
      image: true,
      child: Material(
        color: fill.withValues(alpha: 0.35),
        shape: AppRadius.shapeMd(
          side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
        ),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: AppSpacing.xxxl + AppSpacing.xl,
          height: AppSpacing.xxxl + AppSpacing.xl,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Center(
                child: Icon(
                  Icons.image_outlined,
                  color: scheme.onSurface.withValues(alpha: 0.55),
                  size: AppSpacing.xxxl,
                ),
              ),
              if (onRemove != null)
                PositionedDirectional(
                  top: 0,
                  end: 0,
                  child: Semantics(
                    button: true,
                    label: removeSemantics,
                    child: IconButton(
                      visualDensity: VisualDensity.compact,
                      style: IconButton.styleFrom(
                        backgroundColor: scheme.surface.withValues(alpha: 0.92),
                        foregroundColor: scheme.onSurface,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      iconSize: AppSpacing.lg,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints.tightFor(
                        width: AppSpacing.xxl,
                        height: AppSpacing.xxl,
                      ),
                      onPressed: onRemove,
                      icon: const Icon(Icons.close_rounded),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ReviewBlockedBody extends StatelessWidget {
  const _ReviewBlockedBody({
    required this.message,
    required this.scheme,
    required this.textTheme,
    required this.bottom,
  });

  final String message;
  final ColorScheme scheme;
  final TextTheme textTheme;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
        AppSpacing.lg,
        AppSpacing.xxl,
        AppSpacing.lg,
        AppSpacing.xxl + bottom,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.rate_review_outlined,
                size: AppSpacing.xxxl + AppSpacing.md,
                color: scheme.onSurfaceVariant,
              ),
              SizedBox(height: AppSpacing.lg),
              Text(
                message,
                textAlign: TextAlign.center,
                style: textTheme.bodyLarge?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
              SizedBox(height: AppSpacing.xxl),
              FilledButton.tonal(
                onPressed: () => context.pop(),
                child: Text(l10n.orderReviewBack),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
