import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/wallet/data/datasources/wallet_remote_datasource.dart';
import 'package:delivery_app/features/wallet/domain/repositories/wallet_repository.dart';
import 'package:delivery_app/shared/domain/entities/wallet.dart';
import 'package:fpdart/fpdart.dart';

class WalletRepositoryImpl implements WalletRepository {
  WalletRepositoryImpl({
    required WalletRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  // ignore: unused_field
  final WalletRemoteDataSource _remote;
  // ignore: unused_field
  final NetworkInfo _networkInfo;

  @override
  Future<Result<WalletBalance>> getBalance() async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<List<WalletTransaction>>> getTransactions({
    int page = 1,
    int pageSize = 20,
  }) async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }
}
