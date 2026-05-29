// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for product details
abstract interface class ProductRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  ProductRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
