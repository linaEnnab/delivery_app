import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/restaurant/data/datasources/restaurant_remote_datasource.dart';
import 'package:delivery_app/features/restaurant/domain/repositories/restaurant_repository.dart';

class RestaurantRepositoryImpl implements RestaurantRepository {
  RestaurantRepositoryImpl({
    required RestaurantRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  final RestaurantRemoteDataSource _remote;
  final NetworkInfo _networkInfo;
}
