import 'package:dio/dio.dart';

abstract interface class PaymentsRemoteDataSource {}

class PaymentsRemoteDataSourceImpl implements PaymentsRemoteDataSource {
  PaymentsRemoteDataSourceImpl(this._dio);

  // ignore: unused_field
  final Dio _dio;
}
