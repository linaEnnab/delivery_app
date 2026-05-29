import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/loyalty.dart';

/// Rewards catalog and redemption (points → reward).
abstract interface class RewardsRepository {
  Future<Result<List<Reward>>> getCatalog();

  Future<Result<Reward>> redeem(String rewardId);
}
