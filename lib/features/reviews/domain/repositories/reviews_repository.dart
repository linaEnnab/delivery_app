import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/review.dart';

/// Post-delivery reviews (restaurant, driver, comments, images).
abstract interface class ReviewsRepository {
  Future<Result<ReviewEligibility>> getReviewEligibility(String orderId);

  Future<Result<List<Review>>> submitOrderReview(
    OrderReviewSubmission submission,
  );
}
