// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for user profile and addresses
abstract interface class ProfileRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  ProfileRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
