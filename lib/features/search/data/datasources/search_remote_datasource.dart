// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for search restaurants and products
abstract interface class SearchRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  SearchRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
