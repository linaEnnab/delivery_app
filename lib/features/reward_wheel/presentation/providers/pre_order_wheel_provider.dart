import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Mock: reward claimed during checkout before final submit.
class PreOrderWheelState {
  const PreOrderWheelState({
    this.claimedReward,
  });

  final WheelRewardKind? claimedReward;
}

class PreOrderWheelNotifier extends Notifier<PreOrderWheelState> {
  @override
  PreOrderWheelState build() => const PreOrderWheelState();

  void setClaimedReward(WheelRewardKind kind) {
    state = PreOrderWheelState(claimedReward: kind);
  }

  void clear() {
    state = const PreOrderWheelState();
  }
}

final preOrderWheelProvider =
    NotifierProvider<PreOrderWheelNotifier, PreOrderWheelState>(
  PreOrderWheelNotifier.new,
);
