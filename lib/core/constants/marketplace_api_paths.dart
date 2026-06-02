import 'package:delivery_app/core/constants/delivery_api_paths.dart';

/// Restaurant / product paths used by the marketplace feature.
///
/// Prefer [DeliveryApiPaths] for the full API surface.
abstract final class MarketplaceApiPaths {
  static const restaurants = DeliveryApiPaths.restaurant;

  static String restaurantById(String id) =>
      DeliveryApiPaths.restaurantById(id);

  static String restaurantProducts(String restaurantId) =>
      DeliveryApiPaths.restaurantProducts(restaurantId);
}
