import 'dart:math' as math;

import 'package:delivery_app/core/theme/app_colors.dart';
import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_catalog.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';
import 'package:delivery_app/features/reward_wheel/presentation/widgets/reward_wheel_disc_painter.dart';
import 'package:delivery_app/features/reward_wheel/presentation/widgets/wheel_reward_asset_image.dart';
import 'package:flutter/material.dart';

/// Rotating wheel + fixed pointer; [rotation] is total radians (clockwise).
class RewardWheelDial extends StatelessWidget {
  const RewardWheelDial({
    required this.rotation,
    required this.diameter,
    super.key,
  });

  final double rotation;
  final double diameter;

  static List<WheelRewardKind> get _kinds => WheelRewardCatalog.sliceOrder;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final n = _kinds.length;
    final r = diameter / 2;
    final iconR = r * 0.58;
    const iconSize = 36.0;

    final outer = diameter + 12;
    return SizedBox(
      width: outer,
      height: outer,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          IgnorePointer(
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.primary.withValues(alpha: 0.22),
                  width: 5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: scheme.shadow.withValues(alpha: 0.18),
                    blurRadius: 18,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: SizedBox(width: outer, height: outer),
            ),
          ),
          SizedBox(
            width: diameter,
            height: diameter,
            child: Transform.rotate(
              angle: rotation,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: Size.square(diameter),
                    painter: RewardWheelDiscPainter(sliceKinds: _kinds),
                  ),
                  for (var i = 0; i < n; i++)
                    _SliceRewardImage(
                      angle: WheelRewardCatalog.sliceCenterAngle(i, n),
                      radius: iconR,
                      kind: _kinds[i],
                      size: iconSize,
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            top: AppSpacing.xs,
            child: CustomPaint(
              size: const Size(28, 22),
              painter: _PointerPainter(color: scheme.primary),
            ),
          ),
        ],
      ),
    );
  }
}

class _SliceRewardImage extends StatelessWidget {
  const _SliceRewardImage({
    required this.angle,
    required this.radius,
    required this.kind,
    required this.size,
  });

  final double angle;
  final double radius;
  final WheelRewardKind kind;
  final double size;

  @override
  Widget build(BuildContext context) {
    final x = math.cos(angle) * radius;
    final y = math.sin(angle) * radius;
    return Transform.translate(
      offset: Offset(x, y),
      child: Container(
        width: size + 8,
        height: size + 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withValues(alpha: 0.95),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.12),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: WheelRewardAssetImage(
          kind: kind,
          size: size * 0.92,
        ),
      ),
    );
  }
}

class _PointerPainter extends CustomPainter {
  _PointerPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    final path = Path()
      ..moveTo(w / 2, h)
      ..lineTo(0, 0)
      ..lineTo(w, 0)
      ..close();
    final paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [color, Color.lerp(color, Colors.black, 0.15)!],
      ).createShader(Rect.fromLTWH(0, 0, w, h));
    canvas.drawPath(path, paint);
    canvas.drawPath(
      path,
      Paint()
        ..color = Colors.white.withValues(alpha: 0.5)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5,
    );
  }

  @override
  bool shouldRepaint(covariant _PointerPainter oldDelegate) =>
      oldDelegate.color != color;
}
