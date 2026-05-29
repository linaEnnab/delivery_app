import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/usecases/usecase.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/reviews/domain/repositories/reviews_repository.dart';
import 'package:delivery_app/shared/domain/entities/review.dart';
import 'package:fpdart/fpdart.dart';

/// Submits restaurant and/or driver review after order is [OrderStatus.delivered].
class SubmitOrderReviewUseCase
    implements UseCase<List<Review>, OrderReviewSubmission> {
  SubmitOrderReviewUseCase(this._repository);

  final ReviewsRepository _repository;

  @override
  Future<Result<List<Review>>> call(OrderReviewSubmission params) async {
    final eligibility = await _repository.getReviewEligibility(params.orderId);
    return eligibility.fold(
      Left.new,
      (e) {
        if (!e.canReviewRestaurant && !e.canReviewDriver) {
          return const Left(
            Failure.businessRule(
              message: 'Reviews are only available after delivery',
            ),
          );
        }
        return _repository.submitOrderReview(params);
      },
    );
  }
}
