import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/loyalty.dart';

/// Loyalty points ledger (earn / redeem history). Rewards catalog lives in
/// [RewardsRepository]; spin wheel in [SpinWheelRepository].
abstract interface class LoyaltyRepository {
  Future<Result<LoyaltyBalance>> getBalance();

  Future<Result<List<LoyaltyTransaction>>> getTransactionHistory({
    int page = 1,
    int pageSize = 20,
  });

  /// Active and historical free-delivery grants (spin wheel, campaigns).
  Future<Result<List<FreeDeliveryReward>>> getFreeDeliveryRewards();
}
