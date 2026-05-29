import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/product/data/datasources/product_remote_datasource.dart';
import 'package:delivery_app/features/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl({
    required ProductRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  final ProductRemoteDataSource _remote;
  final NetworkInfo _networkInfo;
}
