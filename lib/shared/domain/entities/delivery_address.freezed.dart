// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeliveryAddress _$DeliveryAddressFromJson(Map<String, dynamic> json) {
  return _DeliveryAddress.fromJson(json);
}

/// @nodoc
mixin _$DeliveryAddress {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  /// Display lines (street / POI text) from reverse geocode or manual edit.
  String get line1 => throw _privateConstructorUsedError;
  String? get line2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;

  /// Structural fields confirmed at checkout (wire keys match legacy API).
  @JsonKey(name: 'building')
  String? get buildingNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'apartment')
  String? get apartmentNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor')
  String? get floorNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_instructions')
  String? get deliveryNotes => throw _privateConstructorUsedError;

  /// Authoritative delivery coordinates for routing, distance, and fees.
  @JsonKey(name: 'location')
  GeoLocation get deliveryPoint => throw _privateConstructorUsedError;

  /// Client-side confirmation that the user locked the pin (future API may
  /// mirror `is_delivery_point_confirmed`).
  @JsonKey(name: 'is_delivery_point_confirmed')
  bool get isDeliveryPointConfirmed => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;

  /// Serializes this DeliveryAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryAddressCopyWith<DeliveryAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAddressCopyWith<$Res> {
  factory $DeliveryAddressCopyWith(
    DeliveryAddress value,
    $Res Function(DeliveryAddress) then,
  ) = _$DeliveryAddressCopyWithImpl<$Res, DeliveryAddress>;
  @useResult
  $Res call({
    String id,
    String label,
    String line1,
    String? line2,
    String city,
    String area,
    @JsonKey(name: 'building') String? buildingNumber,
    @JsonKey(name: 'apartment') String? apartmentNumber,
    @JsonKey(name: 'floor') String? floorNumber,
    @JsonKey(name: 'delivery_instructions') String? deliveryNotes,
    @JsonKey(name: 'location') GeoLocation deliveryPoint,
    @JsonKey(name: 'is_delivery_point_confirmed') bool isDeliveryPointConfirmed,
    @JsonKey(name: 'is_default') bool isDefault,
  });

  $GeoLocationCopyWith<$Res> get deliveryPoint;
}

/// @nodoc
class _$DeliveryAddressCopyWithImpl<$Res, $Val extends DeliveryAddress>
    implements $DeliveryAddressCopyWith<$Res> {
  _$DeliveryAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? line1 = null,
    Object? line2 = freezed,
    Object? city = null,
    Object? area = null,
    Object? buildingNumber = freezed,
    Object? apartmentNumber = freezed,
    Object? floorNumber = freezed,
    Object? deliveryNotes = freezed,
    Object? deliveryPoint = null,
    Object? isDeliveryPointConfirmed = null,
    Object? isDefault = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            line1: null == line1
                ? _value.line1
                : line1 // ignore: cast_nullable_to_non_nullable
                      as String,
            line2: freezed == line2
                ? _value.line2
                : line2 // ignore: cast_nullable_to_non_nullable
                      as String?,
            city: null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String,
            area: null == area
                ? _value.area
                : area // ignore: cast_nullable_to_non_nullable
                      as String,
            buildingNumber: freezed == buildingNumber
                ? _value.buildingNumber
                : buildingNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            apartmentNumber: freezed == apartmentNumber
                ? _value.apartmentNumber
                : apartmentNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            floorNumber: freezed == floorNumber
                ? _value.floorNumber
                : floorNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            deliveryNotes: freezed == deliveryNotes
                ? _value.deliveryNotes
                : deliveryNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
            deliveryPoint: null == deliveryPoint
                ? _value.deliveryPoint
                : deliveryPoint // ignore: cast_nullable_to_non_nullable
                      as GeoLocation,
            isDeliveryPointConfirmed: null == isDeliveryPointConfirmed
                ? _value.isDeliveryPointConfirmed
                : isDeliveryPointConfirmed // ignore: cast_nullable_to_non_nullable
                      as bool,
            isDefault: null == isDefault
                ? _value.isDefault
                : isDefault // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of DeliveryAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res> get deliveryPoint {
    return $GeoLocationCopyWith<$Res>(_value.deliveryPoint, (value) {
      return _then(_value.copyWith(deliveryPoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryAddressImplCopyWith<$Res>
    implements $DeliveryAddressCopyWith<$Res> {
  factory _$$DeliveryAddressImplCopyWith(
    _$DeliveryAddressImpl value,
    $Res Function(_$DeliveryAddressImpl) then,
  ) = __$$DeliveryAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String label,
    String line1,
    String? line2,
    String city,
    String area,
    @JsonKey(name: 'building') String? buildingNumber,
    @JsonKey(name: 'apartment') String? apartmentNumber,
    @JsonKey(name: 'floor') String? floorNumber,
    @JsonKey(name: 'delivery_instructions') String? deliveryNotes,
    @JsonKey(name: 'location') GeoLocation deliveryPoint,
    @JsonKey(name: 'is_delivery_point_confirmed') bool isDeliveryPointConfirmed,
    @JsonKey(name: 'is_default') bool isDefault,
  });

  @override
  $GeoLocationCopyWith<$Res> get deliveryPoint;
}

/// @nodoc
class __$$DeliveryAddressImplCopyWithImpl<$Res>
    extends _$DeliveryAddressCopyWithImpl<$Res, _$DeliveryAddressImpl>
    implements _$$DeliveryAddressImplCopyWith<$Res> {
  __$$DeliveryAddressImplCopyWithImpl(
    _$DeliveryAddressImpl _value,
    $Res Function(_$DeliveryAddressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? line1 = null,
    Object? line2 = freezed,
    Object? city = null,
    Object? area = null,
    Object? buildingNumber = freezed,
    Object? apartmentNumber = freezed,
    Object? floorNumber = freezed,
    Object? deliveryNotes = freezed,
    Object? deliveryPoint = null,
    Object? isDeliveryPointConfirmed = null,
    Object? isDefault = null,
  }) {
    return _then(
      _$DeliveryAddressImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        line1: null == line1
            ? _value.line1
            : line1 // ignore: cast_nullable_to_non_nullable
                  as String,
        line2: freezed == line2
            ? _value.line2
            : line2 // ignore: cast_nullable_to_non_nullable
                  as String?,
        city: null == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String,
        area: null == area
            ? _value.area
            : area // ignore: cast_nullable_to_non_nullable
                  as String,
        buildingNumber: freezed == buildingNumber
            ? _value.buildingNumber
            : buildingNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        apartmentNumber: freezed == apartmentNumber
            ? _value.apartmentNumber
            : apartmentNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        floorNumber: freezed == floorNumber
            ? _value.floorNumber
            : floorNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        deliveryNotes: freezed == deliveryNotes
            ? _value.deliveryNotes
            : deliveryNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
        deliveryPoint: null == deliveryPoint
            ? _value.deliveryPoint
            : deliveryPoint // ignore: cast_nullable_to_non_nullable
                  as GeoLocation,
        isDeliveryPointConfirmed: null == isDeliveryPointConfirmed
            ? _value.isDeliveryPointConfirmed
            : isDeliveryPointConfirmed // ignore: cast_nullable_to_non_nullable
                  as bool,
        isDefault: null == isDefault
            ? _value.isDefault
            : isDefault // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryAddressImpl extends _DeliveryAddress {
  const _$DeliveryAddressImpl({
    required this.id,
    required this.label,
    required this.line1,
    this.line2,
    required this.city,
    required this.area,
    @JsonKey(name: 'building') this.buildingNumber,
    @JsonKey(name: 'apartment') this.apartmentNumber,
    @JsonKey(name: 'floor') this.floorNumber,
    @JsonKey(name: 'delivery_instructions') this.deliveryNotes,
    @JsonKey(name: 'location') required this.deliveryPoint,
    @JsonKey(name: 'is_delivery_point_confirmed')
    this.isDeliveryPointConfirmed = false,
    @JsonKey(name: 'is_default') this.isDefault = false,
  }) : super._();

  factory _$DeliveryAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryAddressImplFromJson(json);

  @override
  final String id;
  @override
  final String label;

  /// Display lines (street / POI text) from reverse geocode or manual edit.
  @override
  final String line1;
  @override
  final String? line2;
  @override
  final String city;
  @override
  final String area;

  /// Structural fields confirmed at checkout (wire keys match legacy API).
  @override
  @JsonKey(name: 'building')
  final String? buildingNumber;
  @override
  @JsonKey(name: 'apartment')
  final String? apartmentNumber;
  @override
  @JsonKey(name: 'floor')
  final String? floorNumber;
  @override
  @JsonKey(name: 'delivery_instructions')
  final String? deliveryNotes;

  /// Authoritative delivery coordinates for routing, distance, and fees.
  @override
  @JsonKey(name: 'location')
  final GeoLocation deliveryPoint;

  /// Client-side confirmation that the user locked the pin (future API may
  /// mirror `is_delivery_point_confirmed`).
  @override
  @JsonKey(name: 'is_delivery_point_confirmed')
  final bool isDeliveryPointConfirmed;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;

  @override
  String toString() {
    return 'DeliveryAddress(id: $id, label: $label, line1: $line1, line2: $line2, city: $city, area: $area, buildingNumber: $buildingNumber, apartmentNumber: $apartmentNumber, floorNumber: $floorNumber, deliveryNotes: $deliveryNotes, deliveryPoint: $deliveryPoint, isDeliveryPointConfirmed: $isDeliveryPointConfirmed, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryAddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.line1, line1) || other.line1 == line1) &&
            (identical(other.line2, line2) || other.line2 == line2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildingNumber, buildingNumber) ||
                other.buildingNumber == buildingNumber) &&
            (identical(other.apartmentNumber, apartmentNumber) ||
                other.apartmentNumber == apartmentNumber) &&
            (identical(other.floorNumber, floorNumber) ||
                other.floorNumber == floorNumber) &&
            (identical(other.deliveryNotes, deliveryNotes) ||
                other.deliveryNotes == deliveryNotes) &&
            (identical(other.deliveryPoint, deliveryPoint) ||
                other.deliveryPoint == deliveryPoint) &&
            (identical(
                  other.isDeliveryPointConfirmed,
                  isDeliveryPointConfirmed,
                ) ||
                other.isDeliveryPointConfirmed == isDeliveryPointConfirmed) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    label,
    line1,
    line2,
    city,
    area,
    buildingNumber,
    apartmentNumber,
    floorNumber,
    deliveryNotes,
    deliveryPoint,
    isDeliveryPointConfirmed,
    isDefault,
  );

  /// Create a copy of DeliveryAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryAddressImplCopyWith<_$DeliveryAddressImpl> get copyWith =>
      __$$DeliveryAddressImplCopyWithImpl<_$DeliveryAddressImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryAddressImplToJson(this);
  }
}

abstract class _DeliveryAddress extends DeliveryAddress {
  const factory _DeliveryAddress({
    required final String id,
    required final String label,
    required final String line1,
    final String? line2,
    required final String city,
    required final String area,
    @JsonKey(name: 'building') final String? buildingNumber,
    @JsonKey(name: 'apartment') final String? apartmentNumber,
    @JsonKey(name: 'floor') final String? floorNumber,
    @JsonKey(name: 'delivery_instructions') final String? deliveryNotes,
    @JsonKey(name: 'location') required final GeoLocation deliveryPoint,
    @JsonKey(name: 'is_delivery_point_confirmed')
    final bool isDeliveryPointConfirmed,
    @JsonKey(name: 'is_default') final bool isDefault,
  }) = _$DeliveryAddressImpl;
  const _DeliveryAddress._() : super._();

  factory _DeliveryAddress.fromJson(Map<String, dynamic> json) =
      _$DeliveryAddressImpl.fromJson;

  @override
  String get id;
  @override
  String get label;

  /// Display lines (street / POI text) from reverse geocode or manual edit.
  @override
  String get line1;
  @override
  String? get line2;
  @override
  String get city;
  @override
  String get area;

  /// Structural fields confirmed at checkout (wire keys match legacy API).
  @override
  @JsonKey(name: 'building')
  String? get buildingNumber;
  @override
  @JsonKey(name: 'apartment')
  String? get apartmentNumber;
  @override
  @JsonKey(name: 'floor')
  String? get floorNumber;
  @override
  @JsonKey(name: 'delivery_instructions')
  String? get deliveryNotes;

  /// Authoritative delivery coordinates for routing, distance, and fees.
  @override
  @JsonKey(name: 'location')
  GeoLocation get deliveryPoint;

  /// Client-side confirmation that the user locked the pin (future API may
  /// mirror `is_delivery_point_confirmed`).
  @override
  @JsonKey(name: 'is_delivery_point_confirmed')
  bool get isDeliveryPointConfirmed;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;

  /// Create a copy of DeliveryAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryAddressImplCopyWith<_$DeliveryAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
