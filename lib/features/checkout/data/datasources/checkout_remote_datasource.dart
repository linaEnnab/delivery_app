// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for checkout and place order
abstract interface class CheckoutRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class CheckoutRemoteDataSourceImpl implements CheckoutRemoteDataSource {
  CheckoutRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
