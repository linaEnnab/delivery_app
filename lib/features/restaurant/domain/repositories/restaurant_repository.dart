import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/restaurant_summary.dart';

/// Restaurant listing and details.
abstract interface class RestaurantRepository {
  Future<Result<List<RestaurantSummary>>> listRestaurants();

  Future<Result<RestaurantSummary>> getRestaurant(String id);
}
