// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImageImpl _$$ReviewImageImplFromJson(Map<String, dynamic> json) =>
    _$ReviewImageImpl(
      id: json['id'] as String?,
      url: json['url'] as String,
      sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ReviewImageImplToJson(_$ReviewImageImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'url': instance.url,
      'sort_order': instance.sortOrder,
    };

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
  id: json['id'] as String,
  orderId: json['order_id'] as String,
  targetType: $enumDecode(_$ReviewTargetTypeEnumMap, json['target_type']),
  targetId: json['target_id'] as String,
  rating: (json['rating'] as num).toInt(),
  comment: json['comment'] as String?,
  images:
      (json['review_images'] as List<dynamic>?)
          ?.map((e) => ReviewImage.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'target_type': _$ReviewTargetTypeEnumMap[instance.targetType]!,
      'target_id': instance.targetId,
      'rating': instance.rating,
      if (instance.comment case final value?) 'comment': value,
      'review_images': instance.images.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$ReviewTargetTypeEnumMap = {
  ReviewTargetType.restaurant: 'restaurant',
  ReviewTargetType.driver: 'driver',
};

_$OrderReviewSubmissionImpl _$$OrderReviewSubmissionImplFromJson(
  Map<String, dynamic> json,
) => _$OrderReviewSubmissionImpl(
  orderId: json['order_id'] as String,
  restaurantRating: (json['restaurant_rating'] as num?)?.toInt(),
  driverRating: (json['driver_rating'] as num?)?.toInt(),
  comment: json['comment'] as String?,
  images:
      (json['review_images'] as List<dynamic>?)
          ?.map((e) => ReviewImage.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$OrderReviewSubmissionImplToJson(
  _$OrderReviewSubmissionImpl instance,
) => <String, dynamic>{
  'order_id': instance.orderId,
  if (instance.restaurantRating case final value?) 'restaurant_rating': value,
  if (instance.driverRating case final value?) 'driver_rating': value,
  if (instance.comment case final value?) 'comment': value,
  'review_images': instance.images.map((e) => e.toJson()).toList(),
};

_$ReviewEligibilityImpl _$$ReviewEligibilityImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewEligibilityImpl(
  orderId: json['order_id'] as String,
  canReviewRestaurant: json['can_review_restaurant'] as bool,
  canReviewDriver: json['can_review_driver'] as bool,
  restaurantReviewSubmitted: json['restaurant_review_submitted'] as bool,
  driverReviewSubmitted: json['driver_review_submitted'] as bool,
);

Map<String, dynamic> _$$ReviewEligibilityImplToJson(
  _$ReviewEligibilityImpl instance,
) => <String, dynamic>{
  'order_id': instance.orderId,
  'can_review_restaurant': instance.canReviewRestaurant,
  'can_review_driver': instance.canReviewDriver,
  'restaurant_review_submitted': instance.restaurantReviewSubmitted,
  'driver_review_submitted': instance.driverReviewSubmitted,
};
