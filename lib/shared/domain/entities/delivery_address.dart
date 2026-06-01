// Freezed forwards `@JsonKey` to generated private fields; the analyzer does not
// treat factory parameters as field targets (false positive).
// ignore_for_file: invalid_annotation_target

import 'package:delivery_app/shared/domain/value_objects/geo_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_address.freezed.dart';
part 'delivery_address.g.dart';

/// Checkout / fulfillment pin: user-selected map point plus structural
/// delivery details. Serialized on orders as `delivery_address` (see
/// [docs/API_CONTRACTS.md]). Distinct from [UserCurrentLocation], which only
/// drives nearby discovery.
@freezed
class DeliveryAddress with _$DeliveryAddress {
  const DeliveryAddress._();

  const factory DeliveryAddress({
    required String id,
    required String label,

    /// Display lines (street / POI text) from reverse geocode or manual edit.
    required String line1,
    String? line2,
    required String city,
    required String area,

    /// Structural fields confirmed at checkout (wire keys match legacy API).
    @JsonKey(name: 'building') String? buildingNumber,
    @JsonKey(name: 'apartment') String? apartmentNumber,
    @JsonKey(name: 'floor') String? floorNumber,
    @JsonKey(name: 'delivery_instructions') String? deliveryNotes,

    /// Authoritative delivery coordinates for routing, distance, and fees.
    @JsonKey(name: 'location') required GeoLocation deliveryPoint,

    /// Client-side confirmation that the user locked the pin (future API may
    /// mirror `is_delivery_point_confirmed`).
    @JsonKey(name: 'is_delivery_point_confirmed')
    @Default(false)
    bool isDeliveryPointConfirmed,

    @JsonKey(name: 'is_default') @Default(false) bool isDefault,
  }) = _DeliveryAddress;

  factory DeliveryAddress.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAddressFromJson(json);
}
