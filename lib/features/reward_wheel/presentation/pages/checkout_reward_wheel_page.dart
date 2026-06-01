import 'dart:math' as math;

import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/features/cart/presentation/providers/cart_providers.dart';
import 'package:delivery_app/features/reward_wheel/data/wheel_gift_products.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_catalog.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind_helpers.dart';
import 'package:delivery_app/features/reward_wheel/presentation/providers/pre_order_wheel_provider.dart';
import 'package:delivery_app/features/reward_wheel/presentation/providers/reward_wheel_store.dart';
import 'package:delivery_app/features/reward_wheel/presentation/widgets/checkout_reward_win_overlay.dart';
import 'package:delivery_app/features/reward_wheel/presentation/widgets/reward_wheel_dial.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Pre-checkout reward wheel — one mock spin per visit; claim applies to cart (mock).
class CheckoutRewardWheelPage extends ConsumerStatefulWidget {
  const CheckoutRewardWheelPage({super.key});

  @override
  ConsumerState<CheckoutRewardWheelPage> createState() =>
      _CheckoutRewardWheelPageState();
}

class _CheckoutRewardWheelPageState extends ConsumerState<CheckoutRewardWheelPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _spinCtrl;
  final _rng = math.Random();

  double _rotation = 0;
  bool _spinning = false;
  bool _showWin = false;
  WheelRewardKind? _wonKind;

  static const _spinDuration = Duration(milliseconds: 4200);

  @override
  void initState() {
    super.initState();
    _spinCtrl = AnimationController(vsync: this, duration: _spinDuration);
  }

  @override
  void dispose() {
    _spinCtrl.dispose();
    super.dispose();
  }

  Future<void> _onSpin() async {
    if (_spinning || _showWin) return;
    HapticFeedback.mediumImpact();

    final n = WheelRewardCatalog.sliceOrder.length;
    final winningIndex = _rng.nextInt(n);
    final kind = WheelRewardCatalog.sliceOrder[winningIndex];

    final fullSpins = 5 + _rng.nextInt(3);
    final target = WheelRewardCatalog.rotationToLandOnSlice(
      winningIndex: winningIndex,
      totalSlices: n,
      fullRotations: fullSpins,
    );

    setState(() => _spinning = true);

    final begin = _rotation;
    final end = begin + target;

    void tick() {
      final t = Curves.easeOutCubic.transform(_spinCtrl.value);
      setState(() {
        _rotation = begin + (end - begin) * t;
      });
    }

    _spinCtrl.addListener(tick);
    _spinCtrl.reset();
    await _spinCtrl.forward();
    _spinCtrl.removeListener(tick);
    if (!mounted) return;

    setState(() {
      _rotation = end;
      _spinning = false;
      _wonKind = kind;
      _showWin = true;
    });
  }

  void _onClaim() {
    final kind = _wonKind;
    if (kind == null) return;

    final l10n = AppLocalizations.of(context);
    final cart = ref.read(cartNotifierProvider);
    final restaurantId = cart.restaurantId;

    if (kind.addsFreeProductToCart && restaurantId.isNotEmpty) {
      final notifier = ref.read(cartNotifierProvider.notifier);
      if (kind == WheelRewardKind.freeCola) {
        notifier.addProduct(WheelGiftProducts.freeCola(restaurantId));
      } else if (kind == WheelRewardKind.freeFries) {
        notifier.addProduct(WheelGiftProducts.freeFries(restaurantId));
      }
    }

    ref.read(preOrderWheelProvider.notifier).setClaimedReward(kind);
    ref.read(rewardWheelStoreProvider.notifier).addWheelHistoryEntry(
          ref.read(rewardWheelStoreProvider.notifier).createHistoryEntry(
                rewardKind: kind,
                claimed: true,
                orderNumberLabel: l10n.rewardWheelHistoryCheckoutOrderLine,
              ),
        );

    if (mounted) context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final bottom = MediaQuery.paddingOf(context).bottom;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.checkoutRewardWheelTitle),
        automaticallyImplyLeading: !_showWin,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final inset = AppSpacing.pageHorizontalGutter(width);
              final maxContent = AppSpacing.contentMaxWidth(width);
              final wheelSize = math.min(width - inset * 2, 320.0);

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
                          l10n.checkoutRewardWheelSubtitle,
                          style: textTheme.bodyLarge?.copyWith(
                            color: scheme.onSurfaceVariant,
                            height: 1.45,
                          ),
                        ),
                        SizedBox(height: AppSpacing.xxl),
                        Center(
                          child: RewardWheelDial(
                            rotation: _rotation,
                            diameter: wheelSize,
                          ),
                        ),
                        SizedBox(height: AppSpacing.xxl),
                        Semantics(
                          button: true,
                          enabled: !_spinning && !_showWin,
                          label: l10n.rewardWheelSpinButton,
                          child: FilledButton(
                            onPressed:
                                _spinning || _showWin ? null : () => _onSpin(),
                            style: FilledButton.styleFrom(
                              minimumSize: const Size.fromHeight(56),
                              textStyle: textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.symmetric(
                                vertical: AppSpacing.md,
                              ),
                              child: Text(l10n.rewardWheelSpinButton),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          if (_showWin && _wonKind != null)
            CheckoutRewardWinOverlay(
              reward: _wonKind!,
              onClaim: _onClaim,
            ),
        ],
      ),
    );
  }
}
