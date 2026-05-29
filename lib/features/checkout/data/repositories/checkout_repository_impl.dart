import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/checkout/data/datasources/checkout_remote_datasource.dart';
import 'package:delivery_app/features/checkout/domain/repositories/checkout_repository.dart';

class CheckoutRepositoryImpl implements CheckoutRepository {
  CheckoutRepositoryImpl({
    required CheckoutRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  final CheckoutRemoteDataSource _remote;
  final NetworkInfo _networkInfo;
}
