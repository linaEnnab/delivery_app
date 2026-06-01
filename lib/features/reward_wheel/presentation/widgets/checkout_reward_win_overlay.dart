import 'dart:math' as math;

import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/widgets/core_widgets.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';
import 'package:delivery_app/features/reward_wheel/presentation/utils/wheel_reward_prize_localizations.dart';
import 'package:delivery_app/features/reward_wheel/presentation/widgets/wheel_reward_asset_image.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Full-screen win layer: confetti, hero-style reward art, title, claim CTA.
class CheckoutRewardWinOverlay extends StatefulWidget {
  const CheckoutRewardWinOverlay({
    required this.reward,
    required this.onClaim,
    super.key,
  });

  final WheelRewardKind reward;
  final VoidCallback onClaim;

  @override
  State<CheckoutRewardWinOverlay> createState() =>
      _CheckoutRewardWinOverlayState();
}

class _CheckoutRewardWinOverlayState extends State<CheckoutRewardWinOverlay>
    with TickerProviderStateMixin {
  late final AnimationController _confettiCtrl;
  late final AnimationController _revealCtrl;

  @override
  void initState() {
    super.initState();
    _confettiCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3200),
    )..repeat();
    _revealCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 520),
    )..forward();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) HapticFeedback.heavyImpact();
    });
  }

  @override
  void dispose() {
    _confettiCtrl.dispose();
    _revealCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final curved = CurvedAnimation(
      parent: _revealCtrl,
      curve: Curves.easeOutCubic,
    );

    return PopScope(
      canPop: false,
      child: Material(
        color: scheme.surface,
        child: Stack(
          fit: StackFit.expand,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd,
                  colors: [
                    scheme.primaryContainer.withValues(alpha: 0.35),
                    scheme.surface,
                    scheme.tertiaryContainer.withValues(alpha: 0.25),
                  ],
                ),
              ),
            ),
            AnimatedBuilder(
              animation: _confettiCtrl,
              builder: (context, _) {
                return CustomPaint(
                  painter: _ConfettiPainter(
                    progress: (_confettiCtrl.value * 1000 % 1000) / 1000,
                    seed: widget.reward.index * 9973,
                  ),
                );
              },
            ),
            SafeArea(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final maxW = AppSpacing.contentMaxWidth(constraints.maxWidth);
                  return Align(
                    alignment: Alignment.center,
                    child: SingleChildScrollView(
                      padding: EdgeInsetsDirectional.fromSTEB(
                        AppSpacing.pageHorizontalGutter(constraints.maxWidth),
                        AppSpacing.xxxl,
                        AppSpacing.pageHorizontalGutter(constraints.maxWidth),
                        AppSpacing.xl,
                      ),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: maxW),
                        child: FadeTransition(
                          opacity: curved,
                          child: ScaleTransition(
                            scale: Tween<double>(begin: 0.92, end: 1).animate(
                              curved,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  l10n.checkoutRewardWinHeadline,
                                  textAlign: TextAlign.center,
                                  style: textTheme.headlineMedium?.copyWith(
                                    fontWeight: FontWeight.w900,
                                    height: 1.2,
                                  ),
                                ),
                                SizedBox(height: AppSpacing.xxxl),
                                Center(
                                  child: Semantics(
                                    label: wheelRewardPrizeTitle(l10n, widget.reward),
                                    child: _RewardImage(
                                      reward: widget.reward,
                                      scheme: scheme,
                                    ),
                                  ),
                                ),
                                SizedBox(height: AppSpacing.xxxl),
                                Text(
                                  wheelRewardPrizeTitle(l10n, widget.reward),
                                  textAlign: TextAlign.center,
                                  style: textTheme.headlineSmall?.copyWith(
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(height: AppSpacing.md),
                                Text(
                                  wheelRewardPrizeDescription(l10n, widget.reward),
                                  textAlign: TextAlign.center,
                                  style: textTheme.bodyLarge?.copyWith(
                                    color: scheme.onSurfaceVariant,
                                    height: 1.45,
                                  ),
                                ),
                                SizedBox(height: AppSpacing.xxxl),
                                PrimaryButton(
                                  label: l10n.rewardWheelClaimButton,
                                  leading: const Icon(Icons.redeem_rounded, size: 22),
                                  onPressed: () {
                                    HapticFeedback.mediumImpact();
                                    widget.onClaim();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RewardImage extends StatelessWidget {
  const _RewardImage({
    required this.reward,
    required this.scheme,
  });

  final WheelRewardKind reward;
  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) {
    const size = 168.0;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: scheme.primary.withValues(alpha: 0.28),
            blurRadius: 28,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: WheelRewardAssetImage(
        kind: reward,
        size: size,
      ),
    );
  }
}

class _ConfettiPainter extends CustomPainter {
  _ConfettiPainter({
    required this.progress,
    required this.seed,
  });

  final double progress;
  final int seed;

  static const _palette = <Color>[
    Color(0xFFE4002B),
    Color(0xFF006B5C),
    Color(0xFFFFC107),
    Color(0xFF7E57C2),
    Color(0xFF26C6DA),
    Color(0xFFFF7043),
  ];

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    const n = 64;
    for (var i = 0; i < n; i++) {
      final rnd = math.Random(seed + i * 100003);
      final x0 = rnd.nextDouble() * w;
      final phase = (progress + rnd.nextDouble()) % 1.0;
      final y0 = -60 - rnd.nextDouble() * h * 0.35;
      final drift = (rnd.nextDouble() - 0.5) * 140 * phase;
      final fall = phase * (h * 1.05 + rnd.nextDouble() * 100);
      final x = x0 + drift;
      final y = y0 + fall;
      final rot = phase * 5 * math.pi * (rnd.nextBool() ? 1 : -1);
      final color = _palette[i % _palette.length];
      final paint = Paint()..color = color.withValues(alpha: 0.88);
      final r = Rect.fromCenter(center: Offset(x, y), width: 10, height: 16);
      canvas.save();
      canvas.translate(x, y);
      canvas.rotate(rot);
      canvas.translate(-x, -y);
      canvas.drawRRect(
        RRect.fromRectAndRadius(r, const Radius.circular(2)),
        paint,
      );
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant _ConfettiPainter oldDelegate) =>
      oldDelegate.progress != progress || oldDelegate.seed != seed;
}
