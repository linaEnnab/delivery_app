import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/notifications/data/datasources/notifications_remote_datasource.dart';
import 'package:delivery_app/features/notifications/domain/repositories/notifications_repository.dart';

class NotificationsRepositoryImpl implements NotificationsRepository {
  NotificationsRepositoryImpl({
    required NotificationsRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  final NotificationsRemoteDataSource _remote;
  final NetworkInfo _networkInfo;
}
