import 'package:dio/dio.dart';

abstract interface class PromotionsRemoteDataSource {}

class PromotionsRemoteDataSourceImpl implements PromotionsRemoteDataSource {
  PromotionsRemoteDataSourceImpl(this._dio);

  // ignore: unused_field
  final Dio _dio;
}
