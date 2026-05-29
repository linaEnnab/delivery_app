import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/rewards/data/datasources/rewards_remote_datasource.dart';
import 'package:delivery_app/features/rewards/domain/repositories/rewards_repository.dart';
import 'package:delivery_app/shared/domain/entities/loyalty.dart';
import 'package:fpdart/fpdart.dart';

class RewardsRepositoryImpl implements RewardsRepository {
  RewardsRepositoryImpl({
    required RewardsRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  // ignore: unused_field
  final RewardsRemoteDataSource _remote;
  // ignore: unused_field
  final NetworkInfo _networkInfo;

  @override
  Future<Result<List<Reward>>> getCatalog() async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<Reward>> redeem(String rewardId) async {
    return Left(Failure.unexpected(message: 'Not implemented: $rewardId'));
  }
}
