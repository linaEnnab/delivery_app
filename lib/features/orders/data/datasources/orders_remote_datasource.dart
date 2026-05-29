// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for order history and details
abstract interface class OrdersRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class OrdersRemoteDataSourceImpl implements OrdersRemoteDataSource {
  OrdersRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
