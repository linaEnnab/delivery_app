import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/value_objects/geo_location.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';
import 'package:delivery_app/shared/domain/value_objects/route_estimate.dart';

/// Backend-backed geo operations (ASP.NET Core / maps provider). Kept separate
/// from device-local repos so proximity, routing, and pricing can evolve on
/// the server without conflating them with checkout drafts or GPS snapshots.
abstract interface class LocationGeospatialRepository {
  /// Haversine / ellipsoidal distance for coarse proximity (e.g. pre-filter).
  Future<Result<double>> greatCircleDistanceMeters({
    required GeoLocation from,
    required GeoLocation to,
  });

  /// Road-network distance and duration for driver navigation and ETAs.
  Future<Result<RouteEstimate>> estimateGroundRoute({
    required GeoLocation origin,
    required GeoLocation destination,
  });

  /// Restaurant branch identifiers reachable from [center] within [radiusMeters].
  Future<Result<List<String>>> restaurantIdsWithinRadius({
    required GeoLocation center,
    required double radiusMeters,
  });

  /// Delivery fee component for a branch + confirmed delivery pin.
  Future<Result<Money>> quoteDeliveryFee({
    required String restaurantBranchId,
    required GeoLocation deliveryPoint,
  });
}
