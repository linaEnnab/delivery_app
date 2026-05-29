import 'package:dio/dio.dart';

abstract interface class SpinWheelRemoteDataSource {}

class SpinWheelRemoteDataSourceImpl implements SpinWheelRemoteDataSource {
  SpinWheelRemoteDataSourceImpl(this._dio);

  // ignore: unused_field
  final Dio _dio;
}
