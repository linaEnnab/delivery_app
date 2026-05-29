// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for home feed and banners
abstract interface class HomeRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
