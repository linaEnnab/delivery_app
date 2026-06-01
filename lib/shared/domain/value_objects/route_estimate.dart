import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_estimate.freezed.dart';

/// Road-network (or provider-specific) route metrics for driver navigation
/// and delivery-fee heuristics. Populated by [LocationGeospatialRepository]
/// when the backend exposes routing.
@freezed
class RouteEstimate with _$RouteEstimate {
  const factory RouteEstimate({
    required double distanceMeters,
    required int travelDurationSeconds,
  }) = _RouteEstimate;
}
