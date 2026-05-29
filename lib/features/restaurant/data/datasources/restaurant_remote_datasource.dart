// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for restaurant listing and details
abstract interface class RestaurantRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class RestaurantRemoteDataSourceImpl implements RestaurantRemoteDataSource {
  RestaurantRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
