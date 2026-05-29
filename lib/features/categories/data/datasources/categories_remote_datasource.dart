// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for food categories
abstract interface class CategoriesRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class CategoriesRemoteDataSourceImpl implements CategoriesRemoteDataSource {
  CategoriesRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
