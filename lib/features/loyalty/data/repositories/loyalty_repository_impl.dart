import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/loyalty/data/datasources/loyalty_remote_datasource.dart';
import 'package:delivery_app/features/loyalty/domain/repositories/loyalty_repository.dart';
import 'package:delivery_app/shared/domain/entities/loyalty.dart';
import 'package:fpdart/fpdart.dart';

class LoyaltyRepositoryImpl implements LoyaltyRepository {
  LoyaltyRepositoryImpl({
    required LoyaltyRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  // ignore: unused_field
  final LoyaltyRemoteDataSource _remote;
  // ignore: unused_field
  final NetworkInfo _networkInfo;

  @override
  Future<Result<LoyaltyBalance>> getBalance() async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<List<LoyaltyTransaction>>> getTransactionHistory({
    int page = 1,
    int pageSize = 20,
  }) async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<List<FreeDeliveryReward>>> getFreeDeliveryRewards() async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }
}
