import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/restaurant/data/datasources/restaurant_remote_datasource.dart';
import 'package:delivery_app/features/restaurant/data/utils/dio_failure_mapper.dart';
import 'package:delivery_app/features/restaurant/domain/repositories/restaurant_repository.dart';
import 'package:delivery_app/shared/domain/entities/restaurant_summary.dart';
import 'package:fpdart/fpdart.dart';

class RestaurantRepositoryImpl implements RestaurantRepository {
  RestaurantRepositoryImpl({
    required RestaurantRemoteDataSource remoteDataSource,
  }) : _remote = remoteDataSource;

  final RestaurantRemoteDataSource _remote;

  @override
  Future<Result<List<RestaurantSummary>>> listRestaurants() async {
    try {
      final list = await _remote.fetchRestaurants();
      return Right(list);
    } catch (e) {
      return Left(mapDioToFailure(e));
    }
  }

  @override
  Future<Result<RestaurantSummary>> getRestaurant(String id) async {
    try {
      final r = await _remote.fetchRestaurantById(id);
      return Right(r);
    } catch (e) {
      return Left(mapDioToFailure(e));
    }
  }
}
