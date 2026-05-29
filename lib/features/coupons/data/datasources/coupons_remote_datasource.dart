import 'package:dio/dio.dart';

abstract interface class CouponsRemoteDataSource {}

class CouponsRemoteDataSourceImpl implements CouponsRemoteDataSource {
  CouponsRemoteDataSourceImpl(this._dio);

  // ignore: unused_field
  final Dio _dio;
}
