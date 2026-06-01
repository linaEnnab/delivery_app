import 'package:delivery_app/features/loyalty/domain/loyalty_models.dart';

/// Static mock snapshot — replace with repository later.
///
/// Scenario: user is **close** to the next reward but **cannot** spin yet
/// (shows disabled spin CTA). Swap values locally to preview the enabled state.
LoyaltyRewardsSnapshot mockLoyaltyRewardsSnapshot() {
  return LoyaltyRewardsSnapshot(
    totalPoints: 420,
    pointsNeededForNextReward: 80,
    availableRewards: const [
      LoyaltyCatalogRewardKind.freeDelivery,
      LoyaltyCatalogRewardKind.discount10,
      LoyaltyCatalogRewardKind.discount20,
      LoyaltyCatalogRewardKind.freeFries,
      LoyaltyCatalogRewardKind.freeDrink,
      LoyaltyCatalogRewardKind.freeSauce,
    ],
    earnedHistory: [
      LoyaltyEarnedHistoryLine(
        points: 120,
        reason: LoyaltyEarnedReason.completedOrder,
        orderReference: '4521',
        at: DateTime(2026, 5, 28, 14, 20),
      ),
      LoyaltyEarnedHistoryLine(
        points: 40,
        reason: LoyaltyEarnedReason.reviewBonus,
        at: DateTime(2026, 5, 27, 21, 5),
      ),
      LoyaltyEarnedHistoryLine(
        points: 200,
        reason: LoyaltyEarnedReason.referralBonus,
        at: DateTime(2026, 5, 20, 9, 0),
      ),
    ],
    redeemedHistory: [
      LoyaltyRedeemedHistoryLine(
        kind: LoyaltyRedeemedKind.discount10,
        at: DateTime(2026, 5, 15, 18, 30),
      ),
      LoyaltyRedeemedHistoryLine(
        kind: LoyaltyRedeemedKind.freeDrink,
        at: DateTime(2026, 5, 2, 12, 10),
      ),
    ],
    spinWheelCostPoints: 500,
    spinWheelEligible: false,
  );
}
