// Freezed forwards `@JsonKey` / `@Default` to generated code; analyzer false positive.
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_summary.freezed.dart';
part 'restaurant_summary.g.dart';

@freezed
class RestaurantSummary with _$RestaurantSummary {
  const factory RestaurantSummary({
    required String id,
    required String name,
    required String imageUrl,
    /// Square / circular logo for detail header; optional on list cards.
    String? logoUrl,
    @Default('') String description,
    /// ISO-like currency code for formatting delivery fee / minimums.
    @JsonKey(name: 'currency_code') @Default('JOD') String currencyCode,
    /// Short line for hours / open state (from API or empty).
    @JsonKey(name: 'opening_status_line') @Default('') String openingStatusLine,
    required double rating,
    required int reviewCount,
    required String cuisineTags,
    required int estimatedDeliveryMinutes,
    @JsonKey(name: 'estimated_delivery_minutes_max')
    int? estimatedDeliveryMinutesMax,
    required double minimumOrderAmount,
    @JsonKey(name: 'delivery_fee_amount') @Default(0) double deliveryFeeAmount,
    @Default(false) bool isOpen,
    @Default(false) bool hasFreeDelivery,
    @Default(false) bool isSponsored,
  }) = _RestaurantSummary;

  factory RestaurantSummary.fromJson(Map<String, dynamic> json) =>
      _$RestaurantSummaryFromJson(json);
}
