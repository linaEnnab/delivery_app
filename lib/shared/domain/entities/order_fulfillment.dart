import 'package:delivery_app/shared/domain/enums/driver_vehicle_type.dart';
import 'package:delivery_app/shared/domain/value_objects/geo_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_fulfillment.freezed.dart';
part 'order_fulfillment.g.dart';

/// Restaurant branch snapshot on the order (SQL `Orders.RestaurantSnapshot`).
@freezed
class OrderRestaurantDetails with _$OrderRestaurantDetails {
  const factory OrderRestaurantDetails({
    required String id,
    required String name,
    String? phone,
    String? address,
    GeoLocation? coordinates,
  }) = _OrderRestaurantDetails;

  factory OrderRestaurantDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderRestaurantDetailsFromJson(json);
}

/// Driver assigned to the order (customer tracking / notifications).
@freezed
class DriverSummary with _$DriverSummary {
  const factory DriverSummary({
    required String id,
    required String name,
    required String phone,
    double? rating,
    @Default(DriverVehicleType.unknown) DriverVehicleType vehicleType,
  }) = _DriverSummary;

  factory DriverSummary.fromJson(Map<String, dynamic> json) =>
      _$DriverSummaryFromJson(json);
}

/// Customer identity for this delivery (may differ from account holder).
@freezed
class CustomerDeliveryContact with _$CustomerDeliveryContact {
  const factory CustomerDeliveryContact({
    required String name,
    required String phone,
  }) = _CustomerDeliveryContact;

  factory CustomerDeliveryContact.fromJson(Map<String, dynamic> json) =>
      _$CustomerDeliveryContactFromJson(json);
}
