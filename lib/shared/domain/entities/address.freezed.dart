// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get line1 => throw _privateConstructorUsedError;
  String? get line2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String? get building => throw _privateConstructorUsedError;
  String? get floor => throw _privateConstructorUsedError;
  String? get apartment => throw _privateConstructorUsedError;
  String? get deliveryInstructions => throw _privateConstructorUsedError;
  GeoLocation get location => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({
    String id,
    String label,
    String line1,
    String? line2,
    String city,
    String area,
    String? building,
    String? floor,
    String? apartment,
    String? deliveryInstructions,
    GeoLocation location,
    bool isDefault,
  });

  $GeoLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
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
    Object? building = freezed,
    Object? floor = freezed,
    Object? apartment = freezed,
    Object? deliveryInstructions = freezed,
    Object? location = null,
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
            building: freezed == building
                ? _value.building
                : building // ignore: cast_nullable_to_non_nullable
                      as String?,
            floor: freezed == floor
                ? _value.floor
                : floor // ignore: cast_nullable_to_non_nullable
                      as String?,
            apartment: freezed == apartment
                ? _value.apartment
                : apartment // ignore: cast_nullable_to_non_nullable
                      as String?,
            deliveryInstructions: freezed == deliveryInstructions
                ? _value.deliveryInstructions
                : deliveryInstructions // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as GeoLocation,
            isDefault: null == isDefault
                ? _value.isDefault
                : isDefault // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res> get location {
    return $GeoLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
    _$AddressImpl value,
    $Res Function(_$AddressImpl) then,
  ) = __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String label,
    String line1,
    String? line2,
    String city,
    String area,
    String? building,
    String? floor,
    String? apartment,
    String? deliveryInstructions,
    GeoLocation location,
    bool isDefault,
  });

  @override
  $GeoLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
    _$AddressImpl _value,
    $Res Function(_$AddressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Address
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
    Object? building = freezed,
    Object? floor = freezed,
    Object? apartment = freezed,
    Object? deliveryInstructions = freezed,
    Object? location = null,
    Object? isDefault = null,
  }) {
    return _then(
      _$AddressImpl(
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
        building: freezed == building
            ? _value.building
            : building // ignore: cast_nullable_to_non_nullable
                  as String?,
        floor: freezed == floor
            ? _value.floor
            : floor // ignore: cast_nullable_to_non_nullable
                  as String?,
        apartment: freezed == apartment
            ? _value.apartment
            : apartment // ignore: cast_nullable_to_non_nullable
                  as String?,
        deliveryInstructions: freezed == deliveryInstructions
            ? _value.deliveryInstructions
            : deliveryInstructions // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as GeoLocation,
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
class _$AddressImpl implements _Address {
  const _$AddressImpl({
    required this.id,
    required this.label,
    required this.line1,
    this.line2,
    required this.city,
    required this.area,
    this.building,
    this.floor,
    this.apartment,
    this.deliveryInstructions,
    required this.location,
    this.isDefault = false,
  });

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final String line1;
  @override
  final String? line2;
  @override
  final String city;
  @override
  final String area;
  @override
  final String? building;
  @override
  final String? floor;
  @override
  final String? apartment;
  @override
  final String? deliveryInstructions;
  @override
  final GeoLocation location;
  @override
  @JsonKey()
  final bool isDefault;

  @override
  String toString() {
    return 'Address(id: $id, label: $label, line1: $line1, line2: $line2, city: $city, area: $area, building: $building, floor: $floor, apartment: $apartment, deliveryInstructions: $deliveryInstructions, location: $location, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.line1, line1) || other.line1 == line1) &&
            (identical(other.line2, line2) || other.line2 == line2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment) &&
            (identical(other.deliveryInstructions, deliveryInstructions) ||
                other.deliveryInstructions == deliveryInstructions) &&
            (identical(other.location, location) ||
                other.location == location) &&
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
    building,
    floor,
    apartment,
    deliveryInstructions,
    location,
    isDefault,
  );

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(this);
  }
}

abstract class _Address implements Address {
  const factory _Address({
    required final String id,
    required final String label,
    required final String line1,
    final String? line2,
    required final String city,
    required final String area,
    final String? building,
    final String? floor,
    final String? apartment,
    final String? deliveryInstructions,
    required final GeoLocation location,
    final bool isDefault,
  }) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  String get line1;
  @override
  String? get line2;
  @override
  String get city;
  @override
  String get area;
  @override
  String? get building;
  @override
  String? get floor;
  @override
  String? get apartment;
  @override
  String? get deliveryInstructions;
  @override
  GeoLocation get location;
  @override
  bool get isDefault;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
