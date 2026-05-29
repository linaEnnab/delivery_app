import 'package:delivery_app/core/usecases/usecase.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/rewards/domain/repositories/rewards_repository.dart';
import 'package:delivery_app/shared/domain/entities/loyalty.dart';

class RedeemRewardParams {
  const RedeemRewardParams({required this.rewardId});

  final String rewardId;
}

class RedeemRewardUseCase implements UseCase<Reward, RedeemRewardParams> {
  RedeemRewardUseCase(this._repository);

  final RewardsRepository _repository;

  @override
  Future<Result<Reward>> call(RedeemRewardParams params) {
    return _repository.redeem(params.rewardId);
  }
}
