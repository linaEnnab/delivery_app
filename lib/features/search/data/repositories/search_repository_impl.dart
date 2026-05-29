import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/search/data/datasources/search_remote_datasource.dart';
import 'package:delivery_app/features/search/domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl({
    required SearchRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  final SearchRemoteDataSource _remote;
  final NetworkInfo _networkInfo;
}
