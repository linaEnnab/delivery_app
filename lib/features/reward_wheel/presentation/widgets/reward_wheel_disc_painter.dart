import 'dart:math' as math;

import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_catalog.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';
import 'package:flutter/material.dart';

/// Colorful wheel disc with slice separators (icons layered by [RewardWheelDial]).
class RewardWheelDiscPainter extends CustomPainter {
  RewardWheelDiscPainter({
    required this.sliceKinds,
  });

  final List<WheelRewardKind> sliceKinds;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width, size.height) / 2;
    final n = sliceKinds.length;
    if (n == 0) return;
    final sweep = 2 * math.pi / n;
    const start = -math.pi / 2;

    for (var i = 0; i < n; i++) {
      final colors = WheelRewardCatalog.sliceBaseColors(sliceKinds[i]);
      final path = Path()
        ..moveTo(center.dx, center.dy)
        ..arcTo(
          Rect.fromCircle(center: center, radius: radius),
          start + i * sweep,
          sweep,
          false,
        )
        ..close();

      final paint = Paint()
        ..shader = RadialGradient(
          colors: [
            Color.lerp(colors[0], colors[1], 0.35)!,
            colors[0],
          ],
          stops: const [0.35, 1],
        ).createShader(Rect.fromCircle(center: center, radius: radius))
        ..style = PaintingStyle.fill;

      canvas.drawPath(path, paint);

      final edge = Paint()
        ..color = Colors.white.withValues(alpha: 0.35)
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke;
      canvas.drawPath(path, edge);
    }

    final hub = Paint()..color = Colors.white.withValues(alpha: 0.92);
    canvas.drawCircle(center, radius * 0.12, hub);
    final hubBorder = Paint()
      ..color = Colors.black.withValues(alpha: 0.08)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    canvas.drawCircle(center, radius * 0.12, hubBorder);
  }

  @override
  bool shouldRepaint(covariant RewardWheelDiscPainter oldDelegate) =>
      oldDelegate.sliceKinds != sliceKinds;
}
