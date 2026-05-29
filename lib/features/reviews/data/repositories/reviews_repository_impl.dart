import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/reviews/data/datasources/reviews_remote_datasource.dart';
import 'package:delivery_app/features/reviews/domain/repositories/reviews_repository.dart';
import 'package:delivery_app/shared/domain/entities/review.dart';
import 'package:fpdart/fpdart.dart';

class ReviewsRepositoryImpl implements ReviewsRepository {
  ReviewsRepositoryImpl({required ReviewsRemoteDataSource remoteDataSource})
      : _remote = remoteDataSource;

  // ignore: unused_field
  final ReviewsRemoteDataSource _remote;

  @override
  Future<Result<ReviewEligibility>> getReviewEligibility(String orderId) async {
    return Left(Failure.unexpected(message: 'Not implemented: $orderId'));
  }

  @override
  Future<Result<List<Review>>> submitOrderReview(
    OrderReviewSubmission submission,
  ) async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }
}
