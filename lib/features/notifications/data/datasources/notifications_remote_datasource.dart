// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for push and in-app notifications
abstract interface class NotificationsRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class NotificationsRemoteDataSourceImpl implements NotificationsRemoteDataSource {
  NotificationsRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
