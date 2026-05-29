// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for authenticate user sessions
abstract interface class AuthRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
