import 'dart:math' as math;

import 'package:delivery_app/core/theme/app_colors.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';
import 'package:flutter/material.dart';

/// Visual catalog for wheel slices — colors + optional marketing assets in
/// `assets/rewards/`.
abstract final class WheelRewardCatalog {
  static const String _rewardsDir = 'assets/rewards';

  static String assetPath(WheelRewardKind kind) => switch (kind) {
        WheelRewardKind.freeCola => '$_rewardsDir/cola_reward.png',
        WheelRewardKind.freeFries => '$_rewardsDir/fries_reward.png',
        WheelRewardKind.mealDiscount50 => '$_rewardsDir/discount_50.png',
        WheelRewardKind.freeDelivery => '$_rewardsDir/free_delivery.png',
        WheelRewardKind.loyaltyPoints25 => '$_rewardsDir/points_25.png',
        WheelRewardKind.loyaltyPoints50 => '$_rewardsDir/points_50.png',
      };

  static const List<WheelRewardKind> sliceOrder = [
    WheelRewardKind.freeCola,
    WheelRewardKind.freeFries,
    WheelRewardKind.mealDiscount50,
    WheelRewardKind.freeDelivery,
    WheelRewardKind.loyaltyPoints25,
    WheelRewardKind.loyaltyPoints50,
  ];

  static int indexOf(WheelRewardKind kind) => sliceOrder.indexOf(kind);

  static IconData icon(WheelRewardKind kind) => switch (kind) {
        WheelRewardKind.freeCola => Icons.local_drink_rounded,
        WheelRewardKind.freeFries => Icons.fastfood_rounded,
        WheelRewardKind.mealDiscount50 => Icons.restaurant_menu_rounded,
        WheelRewardKind.freeDelivery => Icons.delivery_dining_rounded,
        WheelRewardKind.loyaltyPoints25 => Icons.stars_rounded,
        WheelRewardKind.loyaltyPoints50 => Icons.workspace_premium_rounded,
      };

  /// Slice fill: bold gradients readable on phones.
  static List<Color> sliceBaseColors(WheelRewardKind kind) => switch (kind) {
        WheelRewardKind.freeCola => const [
            Color(0xFF1565C0),
            Color(0xFF42A5F5),
          ],
        WheelRewardKind.freeFries => const [
            Color(0xFFE65100),
            Color(0xFFFFB74D),
          ],
        WheelRewardKind.mealDiscount50 => const [
            Color(0xFF6A1B9A),
            Color(0xFFCE93D8),
          ],
        WheelRewardKind.freeDelivery => const [
            AppColors.secondary,
            Color(0xFF26A69A),
          ],
        WheelRewardKind.loyaltyPoints25 => const [
            Color(0xFF2E7D32),
            Color(0xFF81C784),
          ],
        WheelRewardKind.loyaltyPoints50 => const [
            Color(0xFFC62828),
            Color(0xFFFF8A80),
          ],
      };

  /// Angle (radians) from wheel center to icon anchor for slice [index] in [total].
  /// First slice starts at top (−π/2), clockwise (Flutter canvas).
  static double sliceCenterAngle(int index, int total) {
    final sweep = 2 * math.pi / total;
    return -math.pi / 2 + (index + 0.5) * sweep;
  }

  static double rotationToLandOnSlice({
    required int winningIndex,
    required int totalSlices,
    required int fullRotations,
  }) {
    final sweep = 2 * math.pi / totalSlices;
    return fullRotations * 2 * math.pi - (winningIndex + 0.5) * sweep;
  }
}
