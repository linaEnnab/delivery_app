import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:delivery_app/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl({
    required ProfileRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  final ProfileRemoteDataSource _remote;
  final NetworkInfo _networkInfo;
}
