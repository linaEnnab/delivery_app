// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for loyalty points and rewards
abstract interface class LoyaltyRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class LoyaltyRemoteDataSourceImpl implements LoyaltyRemoteDataSource {
  LoyaltyRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
