// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_fulfillment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderRestaurantDetailsImpl _$$OrderRestaurantDetailsImplFromJson(
  Map<String, dynamic> json,
) => _$OrderRestaurantDetailsImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String?,
  address: json['address'] as String?,
  coordinates: json['coordinates'] == null
      ? null
      : GeoLocation.fromJson(json['coordinates'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$OrderRestaurantDetailsImplToJson(
  _$OrderRestaurantDetailsImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  if (instance.phone case final value?) 'phone': value,
  if (instance.address case final value?) 'address': value,
  if (instance.coordinates?.toJson() case final value?) 'coordinates': value,
};

_$DriverSummaryImpl _$$DriverSummaryImplFromJson(Map<String, dynamic> json) =>
    _$DriverSummaryImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      vehicleType:
          $enumDecodeNullable(
            _$DriverVehicleTypeEnumMap,
            json['vehicle_type'],
          ) ??
          DriverVehicleType.unknown,
    );

Map<String, dynamic> _$$DriverSummaryImplToJson(_$DriverSummaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      if (instance.rating case final value?) 'rating': value,
      'vehicle_type': _$DriverVehicleTypeEnumMap[instance.vehicleType]!,
    };

const _$DriverVehicleTypeEnumMap = {
  DriverVehicleType.motorcycle: 'motorcycle',
  DriverVehicleType.car: 'car',
  DriverVehicleType.bicycle: 'bicycle',
  DriverVehicleType.scooter: 'scooter',
  DriverVehicleType.walking: 'walking',
  DriverVehicleType.unknown: 'unknown',
};

_$CustomerDeliveryContactImpl _$$CustomerDeliveryContactImplFromJson(
  Map<String, dynamic> json,
) => _$CustomerDeliveryContactImpl(
  name: json['name'] as String,
  phone: json['phone'] as String,
);

Map<String, dynamic> _$$CustomerDeliveryContactImplToJson(
  _$CustomerDeliveryContactImpl instance,
) => <String, dynamic>{'name': instance.name, 'phone': instance.phone};
