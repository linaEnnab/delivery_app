import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_flow_constants.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_history_entry.dart';
import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

/// Mock in-memory ledger of wheel outcomes (pre-checkout flow).
class RewardWheelState {
  const RewardWheelState({
    this.wheelRewardHistory = const [],
  });

  final List<WheelRewardHistoryEntry> wheelRewardHistory;

  RewardWheelState copyWith({
    List<WheelRewardHistoryEntry>? wheelRewardHistory,
  }) {
    return RewardWheelState(
      wheelRewardHistory: wheelRewardHistory ?? this.wheelRewardHistory,
    );
  }
}

class RewardWheelStore extends Notifier<RewardWheelState> {
  static const _uuid = Uuid();

  @override
  RewardWheelState build() => const RewardWheelState();

  void addWheelHistoryEntry(WheelRewardHistoryEntry entry) {
    state = state.copyWith(
      wheelRewardHistory: [entry, ...state.wheelRewardHistory],
    );
  }

  WheelRewardHistoryEntry createHistoryEntry({
    required WheelRewardKind rewardKind,
    required bool claimed,
    required String orderNumberLabel,
  }) {
    return WheelRewardHistoryEntry(
      id: _uuid.v4(),
      orderId: kPreCheckoutWheelOrderId,
      orderNumber: orderNumberLabel,
      rewardKind: rewardKind,
      wonAt: DateTime.now(),
      claimed: claimed,
    );
  }
}

final rewardWheelStoreProvider =
    NotifierProvider<RewardWheelStore, RewardWheelState>(RewardWheelStore.new);
