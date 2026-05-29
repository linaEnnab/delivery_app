import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/cart/data/datasources/cart_remote_datasource.dart';
import 'package:delivery_app/features/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  CartRepositoryImpl({
    required CartRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  final CartRemoteDataSource _remote;
  final NetworkInfo _networkInfo;
}
