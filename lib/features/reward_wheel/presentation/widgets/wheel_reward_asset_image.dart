import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_catalog.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';
import 'package:flutter/material.dart';

/// Marketing artwork for a wheel segment / prize (see `assets/rewards/`).
class WheelRewardAssetImage extends StatelessWidget {
  const WheelRewardAssetImage({
    required this.kind,
    required this.size,
    super.key,
    this.fit = BoxFit.cover,
  });

  final WheelRewardKind kind;
  final double size;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ClipOval(
      child: SizedBox(
        width: size,
        height: size,
        child: Image.asset(
          WheelRewardCatalog.assetPath(kind),
          fit: fit,
          gaplessPlayback: true,
          errorBuilder: (context, error, _) => ColoredBox(
            color: scheme.primaryContainer,
            child: Icon(
              WheelRewardCatalog.icon(kind),
              size: size * 0.5,
              color: scheme.onPrimaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}
