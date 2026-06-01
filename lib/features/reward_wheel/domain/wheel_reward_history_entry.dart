import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';
import 'package:equatable/equatable.dart';

/// Single row in mock reward wheel history.
class WheelRewardHistoryEntry extends Equatable {
  const WheelRewardHistoryEntry({
    required this.id,
    required this.orderId,
    required this.orderNumber,
    required this.rewardKind,
    required this.wonAt,
    required this.claimed,
  });

  final String id;
  final String orderId;
  final String orderNumber;
  final WheelRewardKind rewardKind;
  final DateTime wonAt;

  /// Mock: user tapped “Claim” vs dismissed with “Continue”.
  final bool claimed;

  @override
  List<Object?> get props => [
        id,
        orderId,
        orderNumber,
        rewardKind,
        wonAt,
        claimed,
      ];
}
