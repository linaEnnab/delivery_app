import 'package:delivery_app/shared/domain/entities/restaurant_summary.dart';

/// Shared copy for restaurant listing widgets (list + compact cards).
String formatRestaurantDeliveryTime(
  RestaurantSummary restaurant,
  String minutesSuffix,
) {
  final max = restaurant.estimatedDeliveryMinutesMax;
  if (max != null && max > restaurant.estimatedDeliveryMinutes) {
    return '${restaurant.estimatedDeliveryMinutes}–$max $minutesSuffix';
  }
  return '${restaurant.estimatedDeliveryMinutes} $minutesSuffix';
}
