// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantSummaryImpl _$$RestaurantSummaryImplFromJson(
  Map<String, dynamic> json,
) => _$RestaurantSummaryImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  imageUrl: json['image_url'] as String,
  rating: (json['rating'] as num).toDouble(),
  reviewCount: (json['review_count'] as num).toInt(),
  cuisineTags: json['cuisine_tags'] as String,
  estimatedDeliveryMinutes: (json['estimated_delivery_minutes'] as num).toInt(),
  estimatedDeliveryMinutesMax: (json['estimated_delivery_minutes_max'] as num?)
      ?.toInt(),
  minimumOrderAmount: (json['minimum_order_amount'] as num).toDouble(),
  deliveryFeeAmount: (json['delivery_fee_amount'] as num?)?.toDouble() ?? 0,
  isOpen: json['is_open'] as bool? ?? false,
  hasFreeDelivery: json['has_free_delivery'] as bool? ?? false,
  isSponsored: json['is_sponsored'] as bool? ?? false,
);

Map<String, dynamic> _$$RestaurantSummaryImplToJson(
  _$RestaurantSummaryImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image_url': instance.imageUrl,
  'rating': instance.rating,
  'review_count': instance.reviewCount,
  'cuisine_tags': instance.cuisineTags,
  'estimated_delivery_minutes': instance.estimatedDeliveryMinutes,
  if (instance.estimatedDeliveryMinutesMax case final value?)
    'estimated_delivery_minutes_max': value,
  'minimum_order_amount': instance.minimumOrderAmount,
  'delivery_fee_amount': instance.deliveryFeeAmount,
  'is_open': instance.isOpen,
  'has_free_delivery': instance.hasFreeDelivery,
  'is_sponsored': instance.isSponsored,
};
