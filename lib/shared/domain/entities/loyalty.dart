import 'package:delivery_app/shared/domain/enums/loyalty_transaction_kind.dart';
import 'package:delivery_app/shared/domain/enums/reward_type.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loyalty.freezed.dart';
part 'loyalty.g.dart';

@freezed
class LoyaltyBalance with _$LoyaltyBalance {
  const factory LoyaltyBalance({
    required int points,
    required int lifetimeEarned,
    required int lifetimeRedeemed,
    /// Points pending until order delivery (optional API snapshot).
    @Default(0) int pendingPoints,
  }) = _LoyaltyBalance;

  factory LoyaltyBalance.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyBalanceFromJson(json);
}

@freezed
class Reward with _$Reward {
  const factory Reward({
    required String id,
    required String title,
    required String description,
    required RewardType type,
    required int pointsCost,
    Money? discountValue,
    double? discountPercentage,
    String? couponCode,
    String? restaurantId,
    String? restaurantName,
    DateTime? expiresAt,
    @Default(true) bool isAvailable,
  }) = _Reward;

  factory Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);
}

/// Wallet-style free-delivery benefit (granted via spin, tier, or campaign).
@freezed
class FreeDeliveryReward with _$FreeDeliveryReward {
  const factory FreeDeliveryReward({
    required String id,
    required DateTime grantedAt,
    DateTime? expiresAt,
    String? grantSource,
    String? sourceOrderId,
    String? spinWheelSessionId,
    @Default(false) bool isConsumed,
    DateTime? consumedAt,
    String? consumedOnOrderId,
  }) = _FreeDeliveryReward;

  factory FreeDeliveryReward.fromJson(Map<String, dynamic> json) =>
      _$FreeDeliveryRewardFromJson(json);
}

@freezed
class LoyaltyTransaction with _$LoyaltyTransaction {
  const factory LoyaltyTransaction({
    required String id,
    @Default(LoyaltyTransactionKind.unknown) LoyaltyTransactionKind kind,
    required int pointsDelta,
    required String description,
    String? orderId,
    String? rewardId,
    String? spinWheelSessionId,
    String? freeDeliveryRewardId,
    RewardType? rewardTypeHint,
    required DateTime createdAt,
  }) = _LoyaltyTransaction;

  factory LoyaltyTransaction.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyTransactionFromJson(json);
}

@freezed
class SpinWheelResult with _$SpinWheelResult {
  const factory SpinWheelResult({
    required String prizeId,
    required String prizeLabel,
    RewardType? rewardType,
    int? pointsWon,
    String? loyaltyTransactionId,
    FreeDeliveryReward? freeDeliveryReward,
  }) = _SpinWheelResult;

  factory SpinWheelResult.fromJson(Map<String, dynamic> json) =>
      _$SpinWheelResultFromJson(json);
}
