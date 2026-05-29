// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      line1: json['line1'] as String,
      line2: json['line2'] as String?,
      city: json['city'] as String,
      area: json['area'] as String,
      building: json['building'] as String?,
      floor: json['floor'] as String?,
      apartment: json['apartment'] as String?,
      deliveryInstructions: json['delivery_instructions'] as String?,
      location: GeoLocation.fromJson(json['location'] as Map<String, dynamic>),
      isDefault: json['is_default'] as bool? ?? false,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'line1': instance.line1,
      if (instance.line2 case final value?) 'line2': value,
      'city': instance.city,
      'area': instance.area,
      if (instance.building case final value?) 'building': value,
      if (instance.floor case final value?) 'floor': value,
      if (instance.apartment case final value?) 'apartment': value,
      if (instance.deliveryInstructions case final value?)
        'delivery_instructions': value,
      'location': instance.location.toJson(),
      'is_default': instance.isDefault,
    };
