import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/home/data/datasources/home_remote_datasource.dart';
import 'package:delivery_app/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl({
    required HomeRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  final HomeRemoteDataSource _remote;
  final NetworkInfo _networkInfo;
}
