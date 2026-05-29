import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/features/reviews/data/datasources/reviews_remote_datasource.dart';
import 'package:delivery_app/features/reviews/data/repositories/reviews_repository_impl.dart';
import 'package:delivery_app/features/reviews/domain/repositories/reviews_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final reviewsRemoteDataSourceProvider = Provider<ReviewsRemoteDataSource>(
  (ref) => ReviewsRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final reviewsRepositoryProvider = Provider<ReviewsRepository>(
  (ref) => ReviewsRepositoryImpl(
    remoteDataSource: ref.watch(reviewsRemoteDataSourceProvider),
  ),
);
