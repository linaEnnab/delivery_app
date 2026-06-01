// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_current_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserCurrentLocation _$UserCurrentLocationFromJson(Map<String, dynamic> json) {
  return _UserCurrentLocation.fromJson(json);
}

/// @nodoc
mixin _$UserCurrentLocation {
  /// Best-known device coordinates (GPS / fused).
  GeoLocation get coordinates => throw _privateConstructorUsedError;

  /// Horizontal accuracy in meters when the OS reports it.
  double? get accuracyMeters => throw _privateConstructorUsedError;

  /// When this snapshot was produced (device clock).
  DateTime? get obtainedAt => throw _privateConstructorUsedError;

  /// Resolved administrative labels (e.g. reverse geocode pipeline).
  String? get city => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  LocationFixSource get source => throw _privateConstructorUsedError;

  /// Serializes this UserCurrentLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCurrentLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCurrentLocationCopyWith<UserCurrentLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCurrentLocationCopyWith<$Res> {
  factory $UserCurrentLocationCopyWith(
    UserCurrentLocation value,
    $Res Function(UserCurrentLocation) then,
  ) = _$UserCurrentLocationCopyWithImpl<$Res, UserCurrentLocation>;
  @useResult
  $Res call({
    GeoLocation coordinates,
    double? accuracyMeters,
    DateTime? obtainedAt,
    String? city,
    String? area,
    LocationFixSource source,
  });

  $GeoLocationCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$UserCurrentLocationCopyWithImpl<$Res, $Val extends UserCurrentLocation>
    implements $UserCurrentLocationCopyWith<$Res> {
  _$UserCurrentLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCurrentLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
    Object? accuracyMeters = freezed,
    Object? obtainedAt = freezed,
    Object? city = freezed,
    Object? area = freezed,
    Object? source = null,
  }) {
    return _then(
      _value.copyWith(
            coordinates: null == coordinates
                ? _value.coordinates
                : coordinates // ignore: cast_nullable_to_non_nullable
                      as GeoLocation,
            accuracyMeters: freezed == accuracyMeters
                ? _value.accuracyMeters
                : accuracyMeters // ignore: cast_nullable_to_non_nullable
                      as double?,
            obtainedAt: freezed == obtainedAt
                ? _value.obtainedAt
                : obtainedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            area: freezed == area
                ? _value.area
                : area // ignore: cast_nullable_to_non_nullable
                      as String?,
            source: null == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                      as LocationFixSource,
          )
          as $Val,
    );
  }

  /// Create a copy of UserCurrentLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res> get coordinates {
    return $GeoLocationCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserCurrentLocationImplCopyWith<$Res>
    implements $UserCurrentLocationCopyWith<$Res> {
  factory _$$UserCurrentLocationImplCopyWith(
    _$UserCurrentLocationImpl value,
    $Res Function(_$UserCurrentLocationImpl) then,
  ) = __$$UserCurrentLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    GeoLocation coordinates,
    double? accuracyMeters,
    DateTime? obtainedAt,
    String? city,
    String? area,
    LocationFixSource source,
  });

  @override
  $GeoLocationCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$$UserCurrentLocationImplCopyWithImpl<$Res>
    extends _$UserCurrentLocationCopyWithImpl<$Res, _$UserCurrentLocationImpl>
    implements _$$UserCurrentLocationImplCopyWith<$Res> {
  __$$UserCurrentLocationImplCopyWithImpl(
    _$UserCurrentLocationImpl _value,
    $Res Function(_$UserCurrentLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserCurrentLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
    Object? accuracyMeters = freezed,
    Object? obtainedAt = freezed,
    Object? city = freezed,
    Object? area = freezed,
    Object? source = null,
  }) {
    return _then(
      _$UserCurrentLocationImpl(
        coordinates: null == coordinates
            ? _value.coordinates
            : coordinates // ignore: cast_nullable_to_non_nullable
                  as GeoLocation,
        accuracyMeters: freezed == accuracyMeters
            ? _value.accuracyMeters
            : accuracyMeters // ignore: cast_nullable_to_non_nullable
                  as double?,
        obtainedAt: freezed == obtainedAt
            ? _value.obtainedAt
            : obtainedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        area: freezed == area
            ? _value.area
            : area // ignore: cast_nullable_to_non_nullable
                  as String?,
        source: null == source
            ? _value.source
            : source // ignore: cast_nullable_to_non_nullable
                  as LocationFixSource,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCurrentLocationImpl extends _UserCurrentLocation {
  const _$UserCurrentLocationImpl({
    required this.coordinates,
    this.accuracyMeters,
    this.obtainedAt,
    this.city,
    this.area,
    this.source = LocationFixSource.gps,
  }) : super._();

  factory _$UserCurrentLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCurrentLocationImplFromJson(json);

  /// Best-known device coordinates (GPS / fused).
  @override
  final GeoLocation coordinates;

  /// Horizontal accuracy in meters when the OS reports it.
  @override
  final double? accuracyMeters;

  /// When this snapshot was produced (device clock).
  @override
  final DateTime? obtainedAt;

  /// Resolved administrative labels (e.g. reverse geocode pipeline).
  @override
  final String? city;
  @override
  final String? area;
  @override
  @JsonKey()
  final LocationFixSource source;

  @override
  String toString() {
    return 'UserCurrentLocation(coordinates: $coordinates, accuracyMeters: $accuracyMeters, obtainedAt: $obtainedAt, city: $city, area: $area, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCurrentLocationImpl &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.accuracyMeters, accuracyMeters) ||
                other.accuracyMeters == accuracyMeters) &&
            (identical(other.obtainedAt, obtainedAt) ||
                other.obtainedAt == obtainedAt) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    coordinates,
    accuracyMeters,
    obtainedAt,
    city,
    area,
    source,
  );

  /// Create a copy of UserCurrentLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCurrentLocationImplCopyWith<_$UserCurrentLocationImpl> get copyWith =>
      __$$UserCurrentLocationImplCopyWithImpl<_$UserCurrentLocationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCurrentLocationImplToJson(this);
  }
}

abstract class _UserCurrentLocation extends UserCurrentLocation {
  const factory _UserCurrentLocation({
    required final GeoLocation coordinates,
    final double? accuracyMeters,
    final DateTime? obtainedAt,
    final String? city,
    final String? area,
    final LocationFixSource source,
  }) = _$UserCurrentLocationImpl;
  const _UserCurrentLocation._() : super._();

  factory _UserCurrentLocation.fromJson(Map<String, dynamic> json) =
      _$UserCurrentLocationImpl.fromJson;

  /// Best-known device coordinates (GPS / fused).
  @override
  GeoLocation get coordinates;

  /// Horizontal accuracy in meters when the OS reports it.
  @override
  double? get accuracyMeters;

  /// When this snapshot was produced (device clock).
  @override
  DateTime? get obtainedAt;

  /// Resolved administrative labels (e.g. reverse geocode pipeline).
  @override
  String? get city;
  @override
  String? get area;
  @override
  LocationFixSource get source;

  /// Create a copy of UserCurrentLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCurrentLocationImplCopyWith<_$UserCurrentLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
