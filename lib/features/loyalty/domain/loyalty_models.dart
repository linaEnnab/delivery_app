// Loyalty UI models — mock-only; no business rules wired yet.

/// Catalog entries shown under “Available rewards”.
enum LoyaltyCatalogRewardKind {
  freeDelivery,
  discount10,
  discount20,
  freeFries,
  freeDrink,
  freeSauce,
}

/// Reasons for earned-points rows (mock history).
enum LoyaltyEarnedReason {
  completedOrder,
  reviewBonus,
  referralBonus,
}

/// Redeemed reward rows map to catalog kinds for localized titles.
enum LoyaltyRedeemedKind {
  freeDelivery,
  discount10,
  discount20,
  freeFries,
  freeDrink,
  freeSauce,
}

/// Single earned-points history line.
class LoyaltyEarnedHistoryLine {
  const LoyaltyEarnedHistoryLine({
    required this.points,
    required this.reason,
    required this.at,
    this.orderReference,
  });

  final int points;
  final LoyaltyEarnedReason reason;
  final DateTime at;

  /// Shown for [LoyaltyEarnedReason.completedOrder] (e.g. order id fragment).
  final String? orderReference;
}

/// Single redeemed reward history line.
class LoyaltyRedeemedHistoryLine {
  const LoyaltyRedeemedHistoryLine({
    required this.kind,
    required this.at,
  });

  final LoyaltyRedeemedKind kind;
  final DateTime at;
}

/// Full mock snapshot for the rewards screen.
class LoyaltyRewardsSnapshot {
  const LoyaltyRewardsSnapshot({
    required this.totalPoints,
    required this.pointsNeededForNextReward,
    required this.availableRewards,
    required this.earnedHistory,
    required this.redeemedHistory,
    required this.spinWheelCostPoints,
    required this.spinWheelEligible,
  });

  final int totalPoints;

  /// Remaining points until the next tier / reward (UI only; not calculated live).
  final int pointsNeededForNextReward;

  final List<LoyaltyCatalogRewardKind> availableRewards;
  final List<LoyaltyEarnedHistoryLine> earnedHistory;
  final List<LoyaltyRedeemedHistoryLine> redeemedHistory;

  /// Points required for one spin (mock gate only).
  final int spinWheelCostPoints;

  /// Whether mock user passes the points gate (separate from “real” logic).
  final bool spinWheelEligible;
}
