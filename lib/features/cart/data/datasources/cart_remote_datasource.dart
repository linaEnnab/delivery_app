// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for shopping cart
abstract interface class CartRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  CartRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
