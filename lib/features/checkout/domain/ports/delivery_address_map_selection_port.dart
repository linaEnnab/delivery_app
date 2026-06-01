import 'package:delivery_app/shared/domain/value_objects/geo_location.dart';
import 'package:flutter/widgets.dart';

/// Contract for picking the delivery pin on a map (Google Maps or similar).
///
/// The checkout UI calls this from [DeliveryAddressMapSection]. Wire a real
/// implementation via Riverpod override when map SDK is integrated; until then
/// use [NoOpDeliveryAddressMapSelectionPort].
abstract interface class DeliveryAddressMapSelectionPort {
  /// Returns a new point or `null` if the user dismissed the picker.
  Future<GeoLocation?> pickDeliveryPoint(
    BuildContext context, {
    required GeoLocation initial,
  });
}
