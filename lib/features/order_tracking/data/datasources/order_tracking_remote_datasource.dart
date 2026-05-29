// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for live order tracking
abstract interface class OrderTrackingRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class OrderTrackingRemoteDataSourceImpl implements OrderTrackingRemoteDataSource {
  OrderTrackingRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
