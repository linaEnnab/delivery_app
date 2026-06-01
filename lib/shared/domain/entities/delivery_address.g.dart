// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryAddressImpl _$$DeliveryAddressImplFromJson(
  Map<String, dynamic> json,
) => _$DeliveryAddressImpl(
  id: json['id'] as String,
  label: json['label'] as String,
  line1: json['line1'] as String,
  line2: json['line2'] as String?,
  city: json['city'] as String,
  area: json['area'] as String,
  buildingNumber: json['building'] as String?,
  apartmentNumber: json['apartment'] as String?,
  floorNumber: json['floor'] as String?,
  deliveryNotes: json['delivery_instructions'] as String?,
  deliveryPoint: GeoLocation.fromJson(json['location'] as Map<String, dynamic>),
  isDeliveryPointConfirmed:
      json['is_delivery_point_confirmed'] as bool? ?? false,
  isDefault: json['is_default'] as bool? ?? false,
);

Map<String, dynamic> _$$DeliveryAddressImplToJson(
  _$DeliveryAddressImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'label': instance.label,
  'line1': instance.line1,
  if (instance.line2 case final value?) 'line2': value,
  'city': instance.city,
  'area': instance.area,
  if (instance.buildingNumber case final value?) 'building': value,
  if (instance.apartmentNumber case final value?) 'apartment': value,
  if (instance.floorNumber case final value?) 'floor': value,
  if (instance.deliveryNotes case final value?) 'delivery_instructions': value,
  'location': instance.deliveryPoint.toJson(),
  'is_delivery_point_confirmed': instance.isDeliveryPointConfirmed,
  'is_default': instance.isDefault,
};
