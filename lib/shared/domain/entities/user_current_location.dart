import 'package:delivery_app/shared/domain/enums/location_fix_source.dart';
import 'package:delivery_app/shared/domain/value_objects/geo_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_current_location.freezed.dart';
part 'user_current_location.g.dart';

/// Browsing context: where the customer is *now* for discovery (nearby
/// restaurants, city/area chips). Persisted on-device only; not the checkout
/// delivery pin.
@freezed
class UserCurrentLocation with _$UserCurrentLocation {
  const UserCurrentLocation._();

  const factory UserCurrentLocation({
    /// Best-known device coordinates (GPS / fused).
    required GeoLocation coordinates,

    /// Horizontal accuracy in meters when the OS reports it.
    double? accuracyMeters,

    /// When this snapshot was produced (device clock).
    DateTime? obtainedAt,

    /// Resolved administrative labels (e.g. reverse geocode pipeline).
    String? city,
    String? area,

    @Default(LocationFixSource.gps) LocationFixSource source,
  }) = _UserCurrentLocation;

  factory UserCurrentLocation.fromJson(Map<String, dynamic> json) =>
      _$UserCurrentLocationFromJson(json);

  /// Whether city/area labels are populated for UI that depends on them.
  bool get hasResolvedLabels =>
      (city != null && city!.trim().isNotEmpty) ||
      (area != null && area!.trim().isNotEmpty);
}
