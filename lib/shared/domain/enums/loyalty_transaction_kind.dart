import 'package:freezed_annotation/freezed_annotation.dart';

/// Classifies loyalty ledger rows for customer history and SQL reporting.
@JsonEnum(fieldRename: FieldRename.snake)
enum LoyaltyTransactionKind {
  /// Legacy / unspecified (treat as opaque until backfilled).
  unknown,

  /// Points earned from a completed order.
  orderEarned,

  /// Points spent redeeming a catalog reward.
  rewardRedemption,

  /// Manual support or campaign adjustment.
  adjustment,

  /// Outcome of a spin-wheel event (points or linked prize).
  spinWheel,

  /// Free-delivery benefit granted (spin, campaign, tier perk).
  freeDeliveryGranted,

  /// Free-delivery benefit consumed at checkout or voided.
  freeDeliveryConsumed,

  /// Points removed by expiry policy.
  expiry,
}
