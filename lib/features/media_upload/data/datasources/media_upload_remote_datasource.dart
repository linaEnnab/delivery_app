import 'package:dio/dio.dart';

abstract interface class MediaUploadRemoteDataSource {}

class MediaUploadRemoteDataSourceImpl implements MediaUploadRemoteDataSource {
  MediaUploadRemoteDataSourceImpl(this._dio);

  // ignore: unused_field
  final Dio _dio;
}
