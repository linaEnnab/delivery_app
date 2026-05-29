// ignore_for_file: invalid_annotation_target

import 'package:delivery_app/shared/domain/enums/review_target_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

/// Uploaded review media (object storage asset id + public URL).
@freezed
class ReviewImage with _$ReviewImage {
  const factory ReviewImage({
    String? id,
    required String url,
    @Default(0) int sortOrder,
  }) = _ReviewImage;

  factory ReviewImage.fromJson(Map<String, dynamic> json) =>
      _$ReviewImageFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    required String id,
    required String orderId,
    required ReviewTargetType targetType,
    required String targetId,
    required int rating,
    String? comment,
    @JsonKey(name: 'review_images') @Default([]) List<ReviewImage> images,
    required DateTime createdAt,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
class OrderReviewSubmission with _$OrderReviewSubmission {
  const factory OrderReviewSubmission({
    required String orderId,
    int? restaurantRating,
    int? driverRating,
    String? comment,
    @JsonKey(name: 'review_images') @Default([]) List<ReviewImage> images,
  }) = _OrderReviewSubmission;

  factory OrderReviewSubmission.fromJson(Map<String, dynamic> json) =>
      _$OrderReviewSubmissionFromJson(json);
}

@freezed
class ReviewEligibility with _$ReviewEligibility {
  const factory ReviewEligibility({
    required String orderId,
    required bool canReviewRestaurant,
    required bool canReviewDriver,
    required bool restaurantReviewSubmitted,
    required bool driverReviewSubmitted,
  }) = _ReviewEligibility;

  factory ReviewEligibility.fromJson(Map<String, dynamic> json) =>
      _$ReviewEligibilityFromJson(json);
}
