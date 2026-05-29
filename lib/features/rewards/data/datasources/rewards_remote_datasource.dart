import 'package:dio/dio.dart';

/// Remote data source for rewards catalog and redemption.
abstract interface class RewardsRemoteDataSource {}

class RewardsRemoteDataSourceImpl implements RewardsRemoteDataSource {
  RewardsRemoteDataSourceImpl(this._dio);

  // ignore: unused_field
  final Dio _dio;
}
