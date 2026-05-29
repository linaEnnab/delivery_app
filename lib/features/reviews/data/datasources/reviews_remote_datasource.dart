// ignore_for_file: unused_field
import 'package:dio/dio.dart';

/// Remote data source for post-delivery reviews
abstract interface class ReviewsRemoteDataSource {
  // TODO: Define API methods aligned with ApiEndpoints
}

class ReviewsRemoteDataSourceImpl implements ReviewsRemoteDataSource {
  ReviewsRemoteDataSourceImpl(this._dio);

  final Dio _dio;
}
