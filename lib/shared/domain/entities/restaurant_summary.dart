import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_summary.freezed.dart';
part 'restaurant_summary.g.dart';

@freezed
class RestaurantSummary with _$RestaurantSummary {
  const factory RestaurantSummary({
    required String id,
    required String name,
    required String imageUrl,
    required double rating,
    required int reviewCount,
    required String cuisineTags,
    required int estimatedDeliveryMinutes,
    required double minimumOrderAmount,
    @Default(false) bool isOpen,
    @Default(false) bool hasFreeDelivery,
    @Default(false) bool isSponsored,
  }) = _RestaurantSummary;

  factory RestaurantSummary.fromJson(Map<String, dynamic> json) =>
      _$RestaurantSummaryFromJson(json);
}
