import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/restaurant/data/datasources/product_remote_datasource.dart';
import 'package:delivery_app/features/restaurant/data/utils/dio_failure_mapper.dart';
import 'package:delivery_app/features/restaurant/domain/repositories/product_repository.dart';
import 'package:delivery_app/shared/domain/entities/product.dart';
import 'package:fpdart/fpdart.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl({
    required ProductRemoteDataSource remoteDataSource,
  }) : _remote = remoteDataSource;

  final ProductRemoteDataSource _remote;

  @override
  Future<Result<List<Product>>> listByRestaurant({
    required String restaurantId,
    required String defaultCurrencyCode,
  }) async {
    try {
      final list = await _remote.fetchProductsByRestaurant(
        restaurantId: restaurantId,
        defaultCurrencyCode: defaultCurrencyCode,
      );
      return Right(list);
    } catch (e) {
      return Left(mapDioToFailure(e));
    }
  }
}
