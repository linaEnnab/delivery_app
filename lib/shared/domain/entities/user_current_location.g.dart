// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_current_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCurrentLocationImpl _$$UserCurrentLocationImplFromJson(
  Map<String, dynamic> json,
) => _$UserCurrentLocationImpl(
  coordinates: GeoLocation.fromJson(
    json['coordinates'] as Map<String, dynamic>,
  ),
  accuracyMeters: (json['accuracy_meters'] as num?)?.toDouble(),
  obtainedAt: json['obtained_at'] == null
      ? null
      : DateTime.parse(json['obtained_at'] as String),
  city: json['city'] as String?,
  area: json['area'] as String?,
  source:
      $enumDecodeNullable(_$LocationFixSourceEnumMap, json['source']) ??
      LocationFixSource.gps,
);

Map<String, dynamic> _$$UserCurrentLocationImplToJson(
  _$UserCurrentLocationImpl instance,
) => <String, dynamic>{
  'coordinates': instance.coordinates.toJson(),
  if (instance.accuracyMeters case final value?) 'accuracy_meters': value,
  if (instance.obtainedAt?.toIso8601String() case final value?)
    'obtained_at': value,
  if (instance.city case final value?) 'city': value,
  if (instance.area case final value?) 'area': value,
  'source': _$LocationFixSourceEnumMap[instance.source]!,
};

const _$LocationFixSourceEnumMap = {
  LocationFixSource.gps: 'gps',
  LocationFixSource.restored: 'restored',
};
