import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/categories/data/datasources/categories_remote_datasource.dart';
import 'package:delivery_app/features/categories/domain/repositories/categories_repository.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  CategoriesRepositoryImpl({
    required CategoriesRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  final CategoriesRemoteDataSource _remote;
  final NetworkInfo _networkInfo;
}
