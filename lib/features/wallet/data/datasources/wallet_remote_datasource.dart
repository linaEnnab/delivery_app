import 'package:dio/dio.dart';

abstract interface class WalletRemoteDataSource {}

class WalletRemoteDataSourceImpl implements WalletRemoteDataSource {
  WalletRemoteDataSourceImpl(this._dio);

  // ignore: unused_field
  final Dio _dio;
}
